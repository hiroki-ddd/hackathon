import { StyleSheet } from 'react-native';

export default StyleSheet.create({
  // * This is a manifest file that'll be compiled into application.css, which will include all the files
 * listed below.
 *
 * Any CSS and SCSS file within this directory, lib/assets/stylesheets, or any plugin's
 * vendor/assets/stylesheets directory can be referenced here using a relative path.
 *
 * You're free to add application-wide styles to this file and they'll appear at the bottom of the
 * compiled file so the styles you add here take precedence over styles defined in any other CSS/SCSS
 * files in this directory. Styles in this file should be added after the last require_* statement.
 * It is generally better to create a new file per style scope.
 *
 *= require_tree .
 *= require_self
  'html': {
    'fontFamily': 'Helvetica, Arial, "ヒラギノ角ゴ ProN W3", "Hiragino Kaku Gothic ProN", "メイリオ ", Meiryo, sans-serif',
    'WebkitTextSizeAdfust': '100%'
  },
  'body': {
    'width': [{ 'unit': '%H', 'value': 1 }],
    'height': [{ 'unit': '%V', 'value': 1 }],
    'margin': [{ 'unit': 'px', 'value': 0 }, { 'unit': 'px', 'value': 0 }, { 'unit': 'px', 'value': 0 }, { 'unit': 'px', 'value': 0 }],
    'padding': [{ 'unit': 'px', 'value': 0 }, { 'unit': 'px', 'value': 0 }, { 'unit': 'px', 'value': 0 }, { 'unit': 'px', 'value': 0 }]
  },
  'header': {
    'top': [{ 'unit': 'px', 'value': 0 }]
  },
  'navigation-bar': {
    'height': [{ 'unit': 'px', 'value': 48 }],
    'fontSize': [{ 'unit': 'px', 'value': 18 }],
    'margin': [{ 'unit': 'px', 'value': 0 }, { 'unit': 'px', 'value': 0 }, { 'unit': 'px', 'value': 0 }, { 'unit': 'px', 'value': 0 }],
    'backgroundColor': 'black',
    'display': 'flex',
    'alignItems': 'center',
    'justifyContent': 'center'
  },
  'navigation-item': {
    'color': 'white',
    'listStyle': 'none',
    'float': 'left',
    'height': [{ 'unit': 'px', 'value': 48 }],
    'display': 'table-cell',
    'textAlign': 'center',
    'textDecoration': 'none',
    'width': [{ 'unit': 'px', 'value': 200 }],
    'verticalAlign': 'middle',
    'transition': 'all .8s ease',
    'display': 'flex',
    'alignItems': 'center',
    'justifyContent': 'center'
  },
  'navigation-item a': {
    'color': 'white',
    'height': [{ 'unit': 'px', 'value': 48 }],
    'display': 'table-cell',
    'textAlign': 'center',
    'textDecoration': 'none',
    'verticalAlign': 'middle',
    'display': 'flex',
    'alignItems': 'center',
    'justifyContent': 'center'
  },
  'header li:hover': {
    // background-color: pink;
    'transition': 'all .8s ease'
  },
  'navigation-item img': {
    'width': [{ 'unit': 'px', 'value': 200 }],
    'height': [{ 'unit': 'px', 'value': 48 }]
  },
  'top-tytle': {
    'width': [{ 'unit': '%H', 'value': 1 }],
    'height': [{ 'unit': 'px', 'value': 600 }],
    'fontSize': [{ 'unit': 'px', 'value': 100 }],
    'margin': [{ 'unit': 'px', 'value': 0 }, { 'unit': 'px', 'value': 0 }, { 'unit': 'px', 'value': 0 }, { 'unit': 'px', 'value': 0 }],
    'color': 'white',
    'backgroundColor': 'black',
    'display': 'flex',
    'alignItems': 'center',
    'justifyContent': 'center'
  },
  'search-box': {
    'width': [{ 'unit': '%H', 'value': 1 }],
    'height': [{ 'unit': 'px', 'value': 64 }],
    // margin-top: 40px;
    'marginBottom': [{ 'unit': 'px', 'value': 40 }],
    'backgroundColor': 'black',
    'display': 'flex',
    'alignItems': 'center',
    'justifyContent': 'center',
    'color': 'black'
  },
  'input[type="text"]': {
    'width': [{ 'unit': 'px', 'value': 300 }],
    'height': [{ 'unit': 'px', 'value': 30 }],
    'fontSize': [{ 'unit': 'px', 'value': 20 }],
    'float': 'left',
    'borderWidth': '1px',
    'borderRadius': '5px',
    'borderColor': 'white',
    'paddingLeft': [{ 'unit': 'px', 'value': 5 }],
    'color': 'white',
    'backgroundColor': 'rgb(0,0,0,0)'
  },
  'input[type="submit"]': {
    'width': [{ 'unit': 'px', 'value': 80 }],
    'height': [{ 'unit': 'px', 'value': 36 }],
    'fontSize': [{ 'unit': 'px', 'value': 16 }],
    'marginLeft': [{ 'unit': 'px', 'value': 5 }],
    'textAlign': 'center',
    'float': 'left',
    'borderWidth': '1px',
    'borderRadius': '5px',
    'borderColor': 'white',
    'paddingLeft': [{ 'unit': 'px', 'value': 5 }],
    'color': 'white',
    'backgroundColor': 'rgb(0,0,0,0)',
    'cursor': 'pointer'
  },
  'search-result': {
    'width': [{ 'unit': '%H', 'value': 0.6 }],
    'marginTop': [{ 'unit': 'px', 'value': 0 }],
    'paddingTop': [{ 'unit': 'px', 'value': 20 }],
    'paddingBottom': [{ 'unit': 'px', 'value': 20 }],
    'margin': [{ 'unit': 'px', 'value': 0 }, { 'unit': 'string', 'value': 'auto' }, { 'unit': 'px', 'value': 0 }, { 'unit': 'string', 'value': 'auto' }],
    'color': 'black',
    'backgroundColor': 'white'
  },
  'products-card': {
    'width': [{ 'unit': 'px', 'value': 600 }],
    'padding': [{ 'unit': 'px', 'value': 0 }, { 'unit': 'px', 'value': 0 }, { 'unit': 'px', 'value': 0 }, { 'unit': 'px', 'value': 0 }],
    'paddingTop': [{ 'unit': 'px', 'value': 20 }],
    'margin': [{ 'unit': 'px', 'value': 0 }, { 'unit': 'string', 'value': 'auto' }, { 'unit': 'px', 'value': 0 }, { 'unit': 'string', 'value': 'auto' }]
  },
  'product-card': {
    'padding': [{ 'unit': 'px', 'value': 100 }, { 'unit': 'px', 'value': 100 }, { 'unit': 'px', 'value': 100 }, { 'unit': 'px', 'value': 100 }],
    'width': [{ 'unit': 'px', 'value': 600 }],
    'height': [{ 'unit': 'px', 'value': 180 }],
    'margin': [{ 'unit': 'px', 'value': 0 }, { 'unit': 'string', 'value': 'auto' }, { 'unit': 'px', 'value': 0 }, { 'unit': 'string', 'value': 'auto' }],
    'marginBottom': [{ 'unit': 'px', 'value': 40 }]
  },
  'search-result-h3': {
    'textAlign': 'center'
  },
  'reviews-result': {
    'width': [{ 'unit': '%H', 'value': 0.6 }],
    'marginTop': [{ 'unit': 'px', 'value': 0 }],
    'paddingTop': [{ 'unit': 'px', 'value': 20 }],
    'paddingBottom': [{ 'unit': 'px', 'value': 20 }],
    'margin': [{ 'unit': 'px', 'value': 0 }, { 'unit': 'string', 'value': 'auto' }, { 'unit': 'px', 'value': 0 }, { 'unit': 'string', 'value': 'auto' }]
  },
  'review-card': {
    'width': [{ 'unit': 'px', 'value': 600 }],
    'padding': [{ 'unit': 'px', 'value': 0 }, { 'unit': 'px', 'value': 0 }, { 'unit': 'px', 'value': 0 }, { 'unit': 'px', 'value': 0 }],
    'paddingTop': [{ 'unit': 'px', 'value': 20 }],
    'margin': [{ 'unit': 'px', 'value': 0 }, { 'unit': 'string', 'value': 'auto' }, { 'unit': 'px', 'value': 0 }, { 'unit': 'string', 'value': 'auto' }]
  },
  'review-card': {
    // padding: 50px;
    'width': [{ 'unit': 'px', 'value': 600 }],
    // height: 180px;
    'margin': [{ 'unit': 'px', 'value': 0 }, { 'unit': 'string', 'value': 'auto' }, { 'unit': 'px', 'value': 0 }, { 'unit': 'string', 'value': 'auto' }],
    // margin-bottom: 40px;
  },
  'review-discription': {
    'width': [{ 'unit': 'px', 'value': 600 }],
    'margin': [{ 'unit': 'px', 'value': 0 }, { 'unit': 'string', 'value': 'auto' }, { 'unit': 'px', 'value': 0 }, { 'unit': 'string', 'value': 'auto' }],
    'marginBottom': [{ 'unit': 'px', 'value': 200 }],
    'marginTop': [{ 'unit': 'px', 'value': 200 }]
  },
  'line': {
    'width': [{ 'unit': 'px', 'value': 600 }],
    'margin': [{ 'unit': 'px', 'value': 0 }, { 'unit': 'string', 'value': 'auto' }, { 'unit': 'px', 'value': 0 }, { 'unit': 'string', 'value': 'auto' }]
  },
  'products-show': {
    'width': [{ 'unit': 'px', 'value': 600 }],
    'marginTop': [{ 'unit': 'px', 'value': 0 }],
    'paddingTop': [{ 'unit': 'px', 'value': 20 }],
    'paddingBottom': [{ 'unit': 'px', 'value': 20 }],
    'margin': [{ 'unit': 'px', 'value': 0 }, { 'unit': 'string', 'value': 'auto' }, { 'unit': 'px', 'value': 0 }, { 'unit': 'string', 'value': 'auto' }]
  },
  'product-list': {
    'width': [{ 'unit': 'px', 'value': 600 }],
    'marginTop': [{ 'unit': 'px', 'value': 0 }],
    'paddingTop': [{ 'unit': 'px', 'value': 20 }],
    'paddingBottom': [{ 'unit': 'px', 'value': 20 }],
    'margin': [{ 'unit': 'px', 'value': 0 }, { 'unit': 'string', 'value': 'auto' }, { 'unit': 'px', 'value': 0 }, { 'unit': 'string', 'value': 'auto' }]
  },
  'footer': {
    'height': [{ 'unit': 'px', 'value': 80 }],
    'marginTop': [{ 'unit': 'px', 'value': 200 }],
    'backgroundColor': 'black',
    'display': 'flex',
    'alignItems': 'center',
    'justifyContent': 'center',
    'bottom': [{ 'unit': 'px', 'value': 0 }]
  },
  'footer-p': {
    'color': 'white'
  }
});
