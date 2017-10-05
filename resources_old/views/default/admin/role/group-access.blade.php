
<br>
 @if(isset($roleToAssign))
     <strong> Please Assign <span style="color: blue;">{{ $roleToAssign->name }}</span></strong>
 @endif
<br><br>
                                  <table id="example1" class="table table-bordered table-striped">
                                        <thead>
                                        <tr>
                                            <th>SL</th>
                                            <th>Menu</th>
                                            <th style="text-align: center">Grant Access</th>
                                           {{-- <th>Add</th>
                                            <th>Edit</th>
                                            <th>Delete</th>--}}
                                        </tr>
                                        </thead>
                                        <tbody>
                                        <tr>
                                            <td><strong>0</strong></td>
                                            <td ><strong>Check All</strong></td>
                                            <td align="center"><input type="checkbox" name="all_view_class" class="all_view_class"></td>
                                            {{--<td><input type="checkbox" name="all_add_class" class="all_add_class"></td>
                                            <td><input type="checkbox" name="all_edit_class" class="all_edit_class"></td>
                                            <td><input type="checkbox" name="all_delete_class" class="all_delete_class"></td>--}}
                                        </tr>
                                        @set('sl',1)
                                        @if(isset($menus) && !$menus->isEmpty())
                                            @foreach($menus as $menu)
                                                @if(isset($groupAccess))
                                                    @set('isChecked',isAccessable($groupAccess,$groupId,$menu->id))
                                                <tr>
                                                    <td> {{ $sl++ }}</td>
                                                    <td>
                                                        {{ $menu->menu_name }}
                                                    </td>
                                                    <td align="center">
                                                        <input  @if(isset($isChecked) && $isChecked->view) checked="checked" @endif type="checkbox" class="check-common-class check-common-viewclass" id={{ 'view'.'_'.$menu->id }} data-type='view' data-role-id={{ $groupId }} data-menu-id={{ $menu->id }}>
                                                    </td>
                                                   {{-- <td>
                                                        <input @if(isset($isChecked) && $isChecked->add) checked="checked" @endif  type="checkbox" class="check-common-class check-common-addclass" id={{ 'add'.'_'.$menu->id }} data-type='add'  data-role-id={{ $groupId }} data-menu-id={{ $menu->id }}>
                                                    </td>
                                                    <td>
                                                        <input @if(isset($isChecked) && $isChecked->edit) checked="checked" @endif  type="checkbox" class="check-common-class check-common-editclass" id={{ 'edit'.'_'.$menu->id }} data-type='edit' data-role-id={{ $groupId }} data-menu-id={{ $menu->id }}>
                                                    </td>
                                                    <td>
                                                        <input @if(isset($isChecked) && $isChecked->delete) checked="checked" @endif  type="checkbox" class="check-common-class check-common-deleteclass" id={{ 'delete'.'_'.$menu->id }} data-type='delete' data-role-id={{ $groupId }} data-menu-id={{ $menu->id }}>
                                                    </td>--}}
                                                </tr>
                                                @endif
                                            @endforeach
                                        @endif
                                        </tbody>
                                  </table>