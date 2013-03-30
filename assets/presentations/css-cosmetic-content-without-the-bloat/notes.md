CSS: Pseudo Classes and Elements

Learn how to use and the differences between pseudo classes and elements. The focus will be on how to use them together to create powerful, pure CSS solutions to visual challenges that normally might require a fair amount of JavaScript and markup.


Resources:

https://developer.mozilla.org/en-US/docs/CSS/Pseudo-classes
https://developer.mozilla.org/en-US/docs/CSS/Pseudo-elements
https://developer.mozilla.org/en-US/docs/CSS/::after
https://developer.mozilla.org/en-US/docs/CSS/:not

http://css-tricks.com/pseudo-class-selectors/
http://net.tutsplus.com/tutorials/html-css-techniques/the-30-css-selectors-you-must-memorize/


- Intro
  - CSS: Pseudo Classes and Elements
  - Hi! I'm Javier Julio
  - I work on MyFDB.com
- Browser support
  - Some of the CSS shown won't work in IE8 and below. Pseudeo elements will work in IE8!
  - Use your analytics to determine support.
- Pseudo classes
  - A CSS pseudo class is a keyword added to a selector that targets a specific state of that element
  - :link, :visited, :active, :hover, :focus
- Pseudo classes (CSS3)
  - :first-child, :last-child, :not, :checked, :first-of-type, :only-child
  -  Some pseudo classes are CSS2, some are CSS3
- example showing how to select the first instance of an item by class
- Pseudo elements
  - A pseudo element is used just like a pseudo class but instead of selecting state it allows you to style certain parts of the document
  :before, :after
  Is supported in IE8 when not in compatibility mode
  Typically used to add cosmetic content to an element, by using the content property. This element is inline by default.
  can use : or :: syntax, updated in CSS3 to differentiate from pseudo classes
6. nav-divided example
  - common before/after demo
7. simplified nav-divided
  - sometimes it does matter which you use (before/after), sometimes it doesn't (positioned)
8. drop shadow always on top of scrolling area
9. custom checkboxes
10. hint.css
  - discuss using attr() function within content property



.nav-divided {
  > li:after {
    content: "\2022"; // same as &#8226; in HTML (converter: http://www.evotech.net/articles/testjsentities.html)
    margin: 0 5px;
  }

  > li:last-child:after {
    content: '';
    margin: 0;
  }
}

// SIMPLER SOLUTION

.nav-divided {
  > li + li:before {
    content: "\2022"; // same as &#8226; in HTML (converter: http://www.evotech.net/articles/testjsentities.html)
    margin: 0 5px;
  }
}






.collect-form-modal {
  position: relative;

  .modal-header:after {
    @include box-shadow(inset 0 7px 6px -6px rgba(0, 0, 0, 0.2));
    content: "";
    height: 10px;
    left: 0;
    position: absolute;
    right: 0;
    top: 101%;
    z-index: 500; /* position shadow above scrollable content below header */
  }
}







/* using :not this whole selector only applies to browsers that support 
   :checked, otherwise older browsers will just see plain checkboxes 
   with text labels so its still functional and usable */
.checkbox-item:not(:checked) {
  display: inline-block;
  height: 40px;
  margin: 0 7px 10px 0;
  position: relative;
  width: 40px;
  
  label {
    background-color: #e6e6e6;
    border: 1px solid #d9d9d9;
    @include border-radius(3px);
    display: block;
    height: 100%;
    text-indent: -9999px;
    width: 100%;
    
    &:before {
      background: transparent image-url('sprite-sharing.png') no-repeat;
      content: "";
      float: left;
      height: 30px;
      margin: 4px 0 0 4px; /* horizontally and vertically centered, deduct 1 for borders */
      width: 30px;
    }
    
    &.facebook:before {
      background-position: 0 0;
    }
    
    &.twitter:before {
      background-position: -30px 0;
    }

    &.tumblr:before {
      background-position: -60px 0;
    }
    
    &.linkedin:before {
      background-position: -90px 0;
    }
  }
  
  input {
    bottom: 0;
    cursor: pointer;
    height: 100%;
    left: 0;
    @include opacity(0);
    position: absolute;
    right: 0;
    top: 0;
    width: 100%;
    z-index: 10;
    
    &:checked ~ label {
      border-color: transparent;
      
      &.facebook {
        @include vertical-gradient(#5c7fc9, #28447f);
        border-bottom: 1px solid #203666;
        border-top: 1px solid #6a91e5;
      }
      
      &.twitter {
        @include vertical-gradient(#299be2, #154d84);
        border-bottom: 1px solid #124373;
        border-top: 1px solid #2ca6f2;
      }
      
      &.tumblr {
        @include vertical-gradient(#6885a5, #324d68);
        border-bottom: 1px solid #2B4259;
        border-top: 1px solid #7090B2;
      }
      
      &.linkedin {
        @include vertical-gradient(#5eacce, #00659a);
        border-bottom: 1px solid #005b8c;
        border-top: 1px solid #83d3f2;
      }
      
      &.facebook:before {
        background-position: 0 -30px;
      }
      
      &.twitter:before {
        background-position: -30px -30px;
      }

      &.tumblr:before {
        background-position: -60px -30px;
      }
      
      &.linkedin:before {
        background-position: -90px -30px;
      }
    }
  }
}






