import React, {Component} from  "react";
import './LandingPageStyling/footer.css'
import { FaGithub } from "react-icons/fa"
import { FontAwesomeIcon } from "@fortawesome/react-fontawesome";
import {} from "@fortawesome/free-solid-svg-icons";

class Footer extends Component{
    render(){
        return(
            <>
            <footer class = "footer">
               <div class = "wrapper">
               <div class="row">
                    <div class="one_quarter">
                        <h4 class="footer_title">Shop</h4>
                            <ul>
                                <li><a href="#">Coffee</a></li>
                                <li><a href="#">Other</a></li>
                            </ul>
                        
                    </div>

                    <div class="one_quarter">
                        <h4 class="footer_title">Hug With Mug</h4>
                        
                            <ul>
                                <li><a href="#">About</a></li>
                            </ul>
                        
                    </div>


                    <div class="one_quarter">
                        <h4 class="footer_title">User Info</h4>
                       
                            <ul>
                                <li><a href="#">Sign-Up</a></li>
                                <li><a href="#">Subscribe</a></li>
                            </ul>
                        
                    </div>

                    <div class="one_quarter">
                        <h4 class="footer_title">Keep informed</h4>
                            <FaGithub/>
                        
                    </div>
               
               </div>
            </div>
            </footer>

            <div>
                    <p>Copyright &copy; 2022 - All Rights Reserved - <a href="#">Hug with Mug</a></p>
            </div>
             </>
        )

};
}

export default Footer;
