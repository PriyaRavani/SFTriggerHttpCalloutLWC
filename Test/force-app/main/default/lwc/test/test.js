import { LightningElement, api, track, wire } from 'lwc';
import LatestAccList from '@salesforce/apex/TestController.LatestAccList';
export default class Test extends LightningElement {

    @track AccList;
    @track ErrorFound;
    @wire (LatestAccList) renderAccounts({error, data}){
        if(data){
            this.AccList = data;
        }
        if(error){
            this.ErrorFound = error;
        }
        
    }
}