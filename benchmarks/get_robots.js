import http from 'k6/http';

export default function () {
  http.get('http://127.0.0.1:3000/assets/application-e0cf9d8fcb18bf7f909d8d91a5e78499f82ac29523d475bf3a9ab265d5e2b451.css');
}
