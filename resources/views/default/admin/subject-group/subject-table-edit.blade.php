<table border="1">
    <tr>
        <th> SL </th>
        <th> Select </th>
        <th> Subject </th>
    </tr>
    @set('sl',1)
    @if(!$subjectList->isEmpty())
        @foreach($subjectList as $subject)
            <tr>
                <td>{{ $sl++ }}</td>
                <td align="center">
                    @if(in_array($subject->id,$subjectIdArray))
                        <input type="checkbox" checked="checked" name="subject_ids[{{ $subject->id }}]" value="{{$subject->id}}">
                    @else
                        <input type="checkbox" name="subject_ids[{{ $subject->id }}]" value="{{$subject->id}}">
                    @endif
                </td>
                <td>{{ $subject->subject_name }}</td>
            </tr>
        @endforeach
    @endif
</table>