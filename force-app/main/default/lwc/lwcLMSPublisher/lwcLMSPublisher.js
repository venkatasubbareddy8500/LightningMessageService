import { LightningElement, wire } from 'lwc';
import { publish, MessageContext } from 'lightning/messageService';
import messageChannel from '@salesforce/messageChannel/demoMessageChannel__c';
export default class LwcLMSPublisher extends LightningElement {
    @wire(MessageContext)
    messageContext; 
    message;

    send = () => {
        const payload = { source : 'LWC', data : this.message };
        publish(this.messageContext, messageChannel, payload);
    };

    onValueChange = (event) => {
        this.message = event.target.value;
    };
}