import { LightningElement } from 'lwc';
import MOMENT from '@salesforce/resourceUrl/moment'
//to lead the file we need to do another import
import {loadScript} from 'lightning/platformResourceLoader'
export default class ThirdPartyFiles extends LightningElement {
    currentDate=''
    isLibLoaded = false
    renderedCallback(){
        if(this.isLibLoaded){
            return
        } else{
            Promise.all([
                loadScript(this, MOMENT+'/moment/moment.min.js')
            ]).then(()=>{
                //success
                this.setDateOnScreen()
            }).catch(error=>{
                console.error(error)
            })
            this.isLibLoaded = true
        }
        
    }
    setDateOnScreen(){
        this.currentDate = moment().format('LLLL')
    }
}