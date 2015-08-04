 function arrOut = insertAt(arr,val,index)
      assert( index<= numel(arr)+1);
      assert( index>=1);
      if index == numel(arr)+1
          arrOut = [arr val];
      else
          arrOut = [arr(1:index-1) val arr(index:end)];
      end
   end