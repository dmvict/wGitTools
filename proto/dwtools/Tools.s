
if( typeof module !== 'undefined' )
{
  let Self;

  if( typeof _global_ === 'undefined' || !Object.hasOwnProperty.call( _global_, 'wBase' ) )
  {
    let toolsPath = './abase/l1/testing1/Include.s';
    let toolsExternal = 0;
    try
    {
      toolsPath = require.resolve( toolsPath );
    }
    catch( err )
    {
      toolsExternal = 1;
      Self = require( 'wmodulefortesting1' );
    }
    if( !toolsExternal )
    Self = require( toolsPath );
  }

  debugger;

  module[ 'exports' ] = Self;

}
