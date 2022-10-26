import { LightningElement } from 'lwc';
import {subscribe,unsubscribe,createMessageContext,releaseMessageContext,APPLICATION_SCOPE} from 'lightning/messageService';
import messageChannel from "@salesforce/messageChannel/demoMessageChannel__c";
export default class LwcLMSSubscriber extends LightningElement {
    subscription = null;
    payload='';
    contextvar = createMessageContext();
    indication = 'UNSUBSCRIBED';

    constructor() {
        super();
    }

    subscribeMsg() {
        if (this.subscription) {
            return;
        }
        else{
            this.indication = 'SUBSCRIBED';
        }
        this.subscription = subscribe(this.contextvar,messageChannel, (message) => { //Subscribe method
                this.payload  = JSON.stringify(message);
        }, {scope: APPLICATION_SCOPE}); //Required from Spring'20 Update - Make sure to Import it.
     }
 
     unsubscribeMsg() {
         unsubscribe(this.subscription);
         this.subscription = null;
         this.indication = 'UNSUBSCRIBED';
         this.payload = '';
     }

     disconnectedCallback() {
         releaseMessageContext(this.context);
     }
}