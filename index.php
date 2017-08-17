<?php

function adminer_object()
{
  class CustomDatabase extends Adminer
  {
    function credentials()
    {
      return ['db', 'root', '1'];
    }
  }
  return new CustomDatabase;
}

include "./adminer.php";