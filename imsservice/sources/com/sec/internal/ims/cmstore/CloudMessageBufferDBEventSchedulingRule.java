package com.sec.internal.ims.cmstore;

import android.util.Log;
import com.sec.internal.constants.ims.cmstore.CloudMessageBufferDBConstants;
import com.sec.internal.ims.cmstore.params.ParamSyncFlagsSet;

/* loaded from: classes.dex */
public class CloudMessageBufferDBEventSchedulingRule {
    private static final String TAG = "CloudMessageBufferDBEventSchedulingRule";

    public ParamSyncFlagsSet getSetFlagsForMsgOperation(int i, long j, CloudMessageBufferDBConstants.DirectionFlag directionFlag, CloudMessageBufferDBConstants.ActionStatusFlag actionStatusFlag, CloudMessageBufferDBConstants.MsgOperationFlag msgOperationFlag) {
        CloudMessageBufferDBConstants.DirectionFlag directionFlag2 = CloudMessageBufferDBConstants.DirectionFlag.Done;
        CloudMessageBufferDBConstants.ActionStatusFlag actionStatusFlag2 = CloudMessageBufferDBConstants.ActionStatusFlag.None;
        ParamSyncFlagsSet paramSyncFlagsSet = new ParamSyncFlagsSet(directionFlag2, actionStatusFlag2);
        switch (AnonymousClass1.$SwitchMap$com$sec$internal$constants$ims$cmstore$CloudMessageBufferDBConstants$MsgOperationFlag[msgOperationFlag.ordinal()]) {
            case 1:
                handleReadOperationForFlags(directionFlag, actionStatusFlag, paramSyncFlagsSet);
                break;
            case 2:
                handleDeleteOperationForFlags(directionFlag, actionStatusFlag, paramSyncFlagsSet);
                break;
            case 3:
            case 4:
                if ((actionStatusFlag.equals(CloudMessageBufferDBConstants.ActionStatusFlag.Update) || actionStatusFlag.equals(CloudMessageBufferDBConstants.ActionStatusFlag.Delete)) && directionFlag.equals(CloudMessageBufferDBConstants.DirectionFlag.UpdatingDevice)) {
                    paramSyncFlagsSet.mAction = actionStatusFlag;
                    paramSyncFlagsSet.mDirection = directionFlag;
                    break;
                } else if (actionStatusFlag.equals(CloudMessageBufferDBConstants.ActionStatusFlag.Deleted) || actionStatusFlag.equals(CloudMessageBufferDBConstants.ActionStatusFlag.FetchIndividualUri)) {
                    paramSyncFlagsSet.mIsChanged = false;
                    break;
                }
                break;
            case 5:
                if ((actionStatusFlag.equals(CloudMessageBufferDBConstants.ActionStatusFlag.Insert) && handleActionStatusFlagInsertWhenDeleteOrCancel(directionFlag)) || (actionStatusFlag.equals(actionStatusFlag2) && directionFlag.equals(directionFlag2))) {
                    paramSyncFlagsSet.mAction = CloudMessageBufferDBConstants.ActionStatusFlag.Cancel;
                    paramSyncFlagsSet.mDirection = CloudMessageBufferDBConstants.DirectionFlag.UpdatingCloud;
                    break;
                }
                break;
            case 6:
            case 7:
            case 8:
                if (actionStatusFlag.equals(CloudMessageBufferDBConstants.ActionStatusFlag.Deleted)) {
                    paramSyncFlagsSet.mIsChanged = false;
                    break;
                }
                break;
            case 9:
                if (actionStatusFlag.equals(actionStatusFlag2)) {
                    paramSyncFlagsSet.mAction = CloudMessageBufferDBConstants.ActionStatusFlag.Starred;
                    paramSyncFlagsSet.mDirection = CloudMessageBufferDBConstants.DirectionFlag.UpdatingCloud;
                    break;
                }
                break;
            case 10:
                if (actionStatusFlag.equals(actionStatusFlag2)) {
                    paramSyncFlagsSet.mAction = CloudMessageBufferDBConstants.ActionStatusFlag.UnStarred;
                    paramSyncFlagsSet.mDirection = CloudMessageBufferDBConstants.DirectionFlag.UpdatingCloud;
                    break;
                }
                break;
            case 11:
                if (actionStatusFlag.equals(actionStatusFlag2)) {
                    paramSyncFlagsSet.mAction = CloudMessageBufferDBConstants.ActionStatusFlag.Spam;
                    paramSyncFlagsSet.mDirection = CloudMessageBufferDBConstants.DirectionFlag.UpdatingCloud;
                    break;
                }
                break;
            case 12:
                if (actionStatusFlag.equals(actionStatusFlag2)) {
                    paramSyncFlagsSet.mAction = CloudMessageBufferDBConstants.ActionStatusFlag.Trash;
                    paramSyncFlagsSet.mDirection = CloudMessageBufferDBConstants.DirectionFlag.UpdatingCloud;
                    break;
                }
                break;
            case 13:
                if (actionStatusFlag.equals(actionStatusFlag2)) {
                    paramSyncFlagsSet.mAction = CloudMessageBufferDBConstants.ActionStatusFlag.Restore;
                    paramSyncFlagsSet.mDirection = CloudMessageBufferDBConstants.DirectionFlag.UpdatingCloud;
                    break;
                }
                break;
        }
        Log.d(TAG, "dbIndex: " + i + ", bufferId: " + j + ", getSetFlagsForMsgOperation, origDir: " + directionFlag + " origAction: " + actionStatusFlag + " msgOperation: " + msgOperationFlag + ", sync flag result :" + paramSyncFlagsSet.toString());
        return paramSyncFlagsSet;
    }

    private void handleDeleteOperationForFlags(CloudMessageBufferDBConstants.DirectionFlag directionFlag, CloudMessageBufferDBConstants.ActionStatusFlag actionStatusFlag, ParamSyncFlagsSet paramSyncFlagsSet) {
        switch (AnonymousClass1.$SwitchMap$com$sec$internal$constants$ims$cmstore$CloudMessageBufferDBConstants$ActionStatusFlag[actionStatusFlag.ordinal()]) {
            case 1:
                if (directionFlag.equals(CloudMessageBufferDBConstants.DirectionFlag.ToSendCloud)) {
                    paramSyncFlagsSet.mAction = CloudMessageBufferDBConstants.ActionStatusFlag.Delete;
                    paramSyncFlagsSet.mDirection = CloudMessageBufferDBConstants.DirectionFlag.UpdatingCloud;
                    break;
                } else {
                    CloudMessageBufferDBConstants.DirectionFlag directionFlag2 = CloudMessageBufferDBConstants.DirectionFlag.UpdatingCloud;
                    if (directionFlag.equals(directionFlag2)) {
                        paramSyncFlagsSet.mAction = CloudMessageBufferDBConstants.ActionStatusFlag.Delete;
                        paramSyncFlagsSet.mDirection = directionFlag2;
                        paramSyncFlagsSet.mIsChanged = false;
                        break;
                    }
                }
                break;
            case 2:
                if (handleActionStatusFlagInsertWhenDeleteOrCancel(directionFlag)) {
                    paramSyncFlagsSet.mAction = CloudMessageBufferDBConstants.ActionStatusFlag.Delete;
                    paramSyncFlagsSet.mDirection = CloudMessageBufferDBConstants.DirectionFlag.UpdatingCloud;
                    break;
                } else if (directionFlag.equals(CloudMessageBufferDBConstants.DirectionFlag.ToSendCloud)) {
                    paramSyncFlagsSet.mAction = CloudMessageBufferDBConstants.ActionStatusFlag.Delete;
                    paramSyncFlagsSet.mDirection = CloudMessageBufferDBConstants.DirectionFlag.Done;
                    break;
                }
                break;
            case 3:
            case 4:
                if (handleActionStatusFlagUpdateWhenDelete(directionFlag)) {
                    paramSyncFlagsSet.mAction = CloudMessageBufferDBConstants.ActionStatusFlag.Delete;
                    paramSyncFlagsSet.mDirection = CloudMessageBufferDBConstants.DirectionFlag.UpdatingCloud;
                    break;
                }
                break;
            case 5:
                if (directionFlag.equals(CloudMessageBufferDBConstants.DirectionFlag.Done)) {
                    paramSyncFlagsSet.mAction = CloudMessageBufferDBConstants.ActionStatusFlag.Delete;
                    paramSyncFlagsSet.mDirection = CloudMessageBufferDBConstants.DirectionFlag.UpdatingCloud;
                    break;
                }
                break;
            case 6:
                if (directionFlag.equals(CloudMessageBufferDBConstants.DirectionFlag.Downloading)) {
                    paramSyncFlagsSet.mAction = CloudMessageBufferDBConstants.ActionStatusFlag.Delete;
                    paramSyncFlagsSet.mDirection = CloudMessageBufferDBConstants.DirectionFlag.UpdatingCloud;
                    break;
                }
                break;
            case 7:
                if (directionFlag.equals(CloudMessageBufferDBConstants.DirectionFlag.UpdatingDevice)) {
                    paramSyncFlagsSet.mAction = CloudMessageBufferDBConstants.ActionStatusFlag.Delete;
                    paramSyncFlagsSet.mDirection = CloudMessageBufferDBConstants.DirectionFlag.UpdatingCloud;
                    break;
                }
                break;
            case 8:
                paramSyncFlagsSet.mIsChanged = false;
                break;
        }
    }

    private void handleReadOperationForFlags(CloudMessageBufferDBConstants.DirectionFlag directionFlag, CloudMessageBufferDBConstants.ActionStatusFlag actionStatusFlag, ParamSyncFlagsSet paramSyncFlagsSet) {
        int i = AnonymousClass1.$SwitchMap$com$sec$internal$constants$ims$cmstore$CloudMessageBufferDBConstants$ActionStatusFlag[actionStatusFlag.ordinal()];
        if (i == 1) {
            if (!directionFlag.equals(CloudMessageBufferDBConstants.DirectionFlag.NmsEvent) && !directionFlag.equals(CloudMessageBufferDBConstants.DirectionFlag.UpdatingCloud)) {
                CloudMessageBufferDBConstants.DirectionFlag directionFlag2 = CloudMessageBufferDBConstants.DirectionFlag.UpdatingDevice;
                if (!directionFlag.equals(directionFlag2)) {
                    if (directionFlag.equals(CloudMessageBufferDBConstants.DirectionFlag.ToSendDevice)) {
                        paramSyncFlagsSet.mAction = CloudMessageBufferDBConstants.ActionStatusFlag.Delete;
                        paramSyncFlagsSet.mDirection = directionFlag2;
                        return;
                    }
                    return;
                }
            }
            paramSyncFlagsSet.mIsChanged = false;
            return;
        }
        if (i == 2) {
            if (handleActionStatusFlagInsertWhenRead(directionFlag)) {
                paramSyncFlagsSet.mAction = CloudMessageBufferDBConstants.ActionStatusFlag.Update;
                paramSyncFlagsSet.mDirection = CloudMessageBufferDBConstants.DirectionFlag.UpdatingCloud;
                return;
            }
            return;
        }
        if (i != 3) {
            if (i != 5) {
                if (i != 8) {
                    return;
                }
                paramSyncFlagsSet.mIsChanged = false;
                return;
            } else {
                if (directionFlag.equals(CloudMessageBufferDBConstants.DirectionFlag.Done)) {
                    paramSyncFlagsSet.mAction = CloudMessageBufferDBConstants.ActionStatusFlag.Update;
                    paramSyncFlagsSet.mDirection = CloudMessageBufferDBConstants.DirectionFlag.UpdatingCloud;
                    return;
                }
                return;
            }
        }
        if (directionFlag.equals(CloudMessageBufferDBConstants.DirectionFlag.ToSendCloud)) {
            paramSyncFlagsSet.mAction = CloudMessageBufferDBConstants.ActionStatusFlag.Update;
            paramSyncFlagsSet.mDirection = CloudMessageBufferDBConstants.DirectionFlag.UpdatingCloud;
            return;
        }
        CloudMessageBufferDBConstants.DirectionFlag directionFlag3 = CloudMessageBufferDBConstants.DirectionFlag.UpdatingCloud;
        if (directionFlag.equals(directionFlag3)) {
            paramSyncFlagsSet.mAction = CloudMessageBufferDBConstants.ActionStatusFlag.Update;
            paramSyncFlagsSet.mDirection = directionFlag3;
            paramSyncFlagsSet.mIsChanged = false;
        }
    }

    private boolean handleActionStatusFlagInsertWhenRead(CloudMessageBufferDBConstants.DirectionFlag directionFlag) {
        return directionFlag.equals(CloudMessageBufferDBConstants.DirectionFlag.NmsEvent) || directionFlag.equals(CloudMessageBufferDBConstants.DirectionFlag.ToSendCloud) || directionFlag.equals(CloudMessageBufferDBConstants.DirectionFlag.ToSendDevice) || directionFlag.equals(CloudMessageBufferDBConstants.DirectionFlag.UpdatingCloud) || directionFlag.equals(CloudMessageBufferDBConstants.DirectionFlag.UpdatingDevice) || directionFlag.equals(CloudMessageBufferDBConstants.DirectionFlag.Done);
    }

    private boolean handleActionStatusFlagUpdateWhenDelete(CloudMessageBufferDBConstants.DirectionFlag directionFlag) {
        return directionFlag.equals(CloudMessageBufferDBConstants.DirectionFlag.NmsEvent) || directionFlag.equals(CloudMessageBufferDBConstants.DirectionFlag.ToSendCloud) || directionFlag.equals(CloudMessageBufferDBConstants.DirectionFlag.ToSendDevice) || directionFlag.equals(CloudMessageBufferDBConstants.DirectionFlag.UpdatingCloud) || directionFlag.equals(CloudMessageBufferDBConstants.DirectionFlag.UpdatingDevice) || directionFlag.equals(CloudMessageBufferDBConstants.DirectionFlag.Done) || directionFlag.equals(CloudMessageBufferDBConstants.DirectionFlag.FetchingFail);
    }

    private boolean handleActionStatusFlagInsertWhenDeleteOrCancel(CloudMessageBufferDBConstants.DirectionFlag directionFlag) {
        return directionFlag.equals(CloudMessageBufferDBConstants.DirectionFlag.NmsEvent) || directionFlag.equals(CloudMessageBufferDBConstants.DirectionFlag.ToSendDevice) || directionFlag.equals(CloudMessageBufferDBConstants.DirectionFlag.UpdatingCloud) || directionFlag.equals(CloudMessageBufferDBConstants.DirectionFlag.UpdatingDevice);
    }

    private boolean handleActionStatusFlagDeleteWhenDelete(CloudMessageBufferDBConstants.DirectionFlag directionFlag) {
        return directionFlag.equals(CloudMessageBufferDBConstants.DirectionFlag.NmsEvent) || directionFlag.equals(CloudMessageBufferDBConstants.DirectionFlag.ToSendDevice) || directionFlag.equals(CloudMessageBufferDBConstants.DirectionFlag.UpdatingDevice);
    }

    public ParamSyncFlagsSet getSetFlagsForCldOperationForCms(int i, long j, CloudMessageBufferDBConstants.DirectionFlag directionFlag, CloudMessageBufferDBConstants.ActionStatusFlag actionStatusFlag, CloudMessageBufferDBConstants.ActionStatusFlag actionStatusFlag2) {
        Log.d(TAG, "getSetFlagsForCldOperationForCms dbIndex: " + i + ", bufferId: " + j + ", origDir: " + directionFlag + " origAction: " + actionStatusFlag + " cldAction: " + actionStatusFlag2);
        ParamSyncFlagsSet paramSyncFlagsSet = new ParamSyncFlagsSet(CloudMessageBufferDBConstants.DirectionFlag.Done, CloudMessageBufferDBConstants.ActionStatusFlag.None);
        CloudMessageBufferDBConstants.ActionStatusFlag actionStatusFlag3 = CloudMessageBufferDBConstants.ActionStatusFlag.Update;
        if (actionStatusFlag2.equals(actionStatusFlag3) && actionStatusFlag.equals(CloudMessageBufferDBConstants.ActionStatusFlag.Insert) && directionFlag.equals(CloudMessageBufferDBConstants.DirectionFlag.ToSendDevice)) {
            paramSyncFlagsSet.mAction = actionStatusFlag3;
            paramSyncFlagsSet.mDirection = CloudMessageBufferDBConstants.DirectionFlag.UpdatingDevice;
            return paramSyncFlagsSet;
        }
        return getSetFlagsForCldOperation(i, j, directionFlag, actionStatusFlag, actionStatusFlag2);
    }

    public ParamSyncFlagsSet getSetFlagsForCldOperation(int i, long j, CloudMessageBufferDBConstants.DirectionFlag directionFlag, CloudMessageBufferDBConstants.ActionStatusFlag actionStatusFlag, CloudMessageBufferDBConstants.ActionStatusFlag actionStatusFlag2) {
        CloudMessageBufferDBConstants.DirectionFlag directionFlag2 = CloudMessageBufferDBConstants.DirectionFlag.Done;
        CloudMessageBufferDBConstants.ActionStatusFlag actionStatusFlag3 = CloudMessageBufferDBConstants.ActionStatusFlag.None;
        ParamSyncFlagsSet paramSyncFlagsSet = new ParamSyncFlagsSet(directionFlag2, actionStatusFlag3);
        int i2 = AnonymousClass1.$SwitchMap$com$sec$internal$constants$ims$cmstore$CloudMessageBufferDBConstants$ActionStatusFlag[actionStatusFlag2.ordinal()];
        if (i2 == 1) {
            handleDeleteCloudOperationForFlags(directionFlag, actionStatusFlag, paramSyncFlagsSet);
        } else if (i2 == 2) {
            handleInsertOperationForFlags(directionFlag, actionStatusFlag, paramSyncFlagsSet);
        } else if (i2 == 3) {
            handleUpdateOperationForFlags(directionFlag, actionStatusFlag, paramSyncFlagsSet);
        } else if (i2 == 4) {
            CloudMessageBufferDBConstants.ActionStatusFlag actionStatusFlag4 = CloudMessageBufferDBConstants.ActionStatusFlag.Delete;
            if (actionStatusFlag.equals(actionStatusFlag4)) {
                if (directionFlag.equals(CloudMessageBufferDBConstants.DirectionFlag.ToSendCloud) || directionFlag.equals(CloudMessageBufferDBConstants.DirectionFlag.UpdatingCloud)) {
                    paramSyncFlagsSet.mDirection = CloudMessageBufferDBConstants.DirectionFlag.UpdatingCloud;
                    paramSyncFlagsSet.mAction = actionStatusFlag4;
                } else {
                    paramSyncFlagsSet.mIsChanged = false;
                }
            } else if (actionStatusFlag.equals(CloudMessageBufferDBConstants.ActionStatusFlag.Insert) || actionStatusFlag.equals(CloudMessageBufferDBConstants.ActionStatusFlag.Update) || actionStatusFlag.equals(CloudMessageBufferDBConstants.ActionStatusFlag.DownLoad) || (actionStatusFlag.equals(actionStatusFlag3) && directionFlag.equals(directionFlag2))) {
                paramSyncFlagsSet.mAction = CloudMessageBufferDBConstants.ActionStatusFlag.Cancel;
                paramSyncFlagsSet.mDirection = CloudMessageBufferDBConstants.DirectionFlag.UpdatingDevice;
            }
        } else if (i2 == 9) {
            if (actionStatusFlag.equals(actionStatusFlag3)) {
                paramSyncFlagsSet.mAction = CloudMessageBufferDBConstants.ActionStatusFlag.Starred;
                paramSyncFlagsSet.mDirection = CloudMessageBufferDBConstants.DirectionFlag.UpdatingDevice;
            }
        } else if (i2 == 10 && actionStatusFlag.equals(actionStatusFlag3)) {
            paramSyncFlagsSet.mAction = CloudMessageBufferDBConstants.ActionStatusFlag.UnStarred;
            paramSyncFlagsSet.mDirection = CloudMessageBufferDBConstants.DirectionFlag.UpdatingDevice;
        }
        Log.d(TAG, "dbIndex: " + i + ", bufferId: " + j + ", getSetFlagsForCldOperation, origDir: " + directionFlag + " origAction: " + actionStatusFlag + " cldAction: " + actionStatusFlag2 + ", sync flag result :" + paramSyncFlagsSet.toString());
        return paramSyncFlagsSet;
    }

    private void handleDeleteCloudOperationForFlags(CloudMessageBufferDBConstants.DirectionFlag directionFlag, CloudMessageBufferDBConstants.ActionStatusFlag actionStatusFlag, ParamSyncFlagsSet paramSyncFlagsSet) {
        int i = AnonymousClass1.$SwitchMap$com$sec$internal$constants$ims$cmstore$CloudMessageBufferDBConstants$ActionStatusFlag[actionStatusFlag.ordinal()];
        if (i != 1) {
            if (i != 2) {
                if (i != 3) {
                    if (i == 5) {
                        if (directionFlag.equals(CloudMessageBufferDBConstants.DirectionFlag.Done)) {
                            paramSyncFlagsSet.mDirection = CloudMessageBufferDBConstants.DirectionFlag.UpdatingDevice;
                            paramSyncFlagsSet.mAction = CloudMessageBufferDBConstants.ActionStatusFlag.Delete;
                            return;
                        }
                        return;
                    }
                    if (i != 7) {
                        if (i == 8) {
                            paramSyncFlagsSet.mIsChanged = false;
                            return;
                        } else if (i != 11 && i != 12) {
                            return;
                        }
                    }
                }
                if (directionFlag.equals(CloudMessageBufferDBConstants.DirectionFlag.NmsEvent)) {
                    paramSyncFlagsSet.mAction = CloudMessageBufferDBConstants.ActionStatusFlag.Deleted;
                    paramSyncFlagsSet.mDirection = CloudMessageBufferDBConstants.DirectionFlag.Done;
                    return;
                }
                if (!directionFlag.equals(CloudMessageBufferDBConstants.DirectionFlag.ToSendCloud) && !directionFlag.equals(CloudMessageBufferDBConstants.DirectionFlag.ToSendDevice) && !directionFlag.equals(CloudMessageBufferDBConstants.DirectionFlag.UpdatingCloud)) {
                    CloudMessageBufferDBConstants.DirectionFlag directionFlag2 = CloudMessageBufferDBConstants.DirectionFlag.UpdatingDevice;
                    if (!directionFlag.equals(directionFlag2)) {
                        if (directionFlag.equals(CloudMessageBufferDBConstants.DirectionFlag.FetchingFail)) {
                            paramSyncFlagsSet.mAction = CloudMessageBufferDBConstants.ActionStatusFlag.Deleted;
                            paramSyncFlagsSet.mDirection = directionFlag2;
                            return;
                        }
                        return;
                    }
                }
                paramSyncFlagsSet.mAction = CloudMessageBufferDBConstants.ActionStatusFlag.Delete;
                paramSyncFlagsSet.mDirection = CloudMessageBufferDBConstants.DirectionFlag.UpdatingDevice;
                return;
            }
            if (directionFlag.equals(CloudMessageBufferDBConstants.DirectionFlag.NmsEvent) || directionFlag.equals(CloudMessageBufferDBConstants.DirectionFlag.ToSendDevice) || directionFlag.equals(CloudMessageBufferDBConstants.DirectionFlag.FetchingFail)) {
                paramSyncFlagsSet.mAction = CloudMessageBufferDBConstants.ActionStatusFlag.Deleted;
                paramSyncFlagsSet.mDirection = CloudMessageBufferDBConstants.DirectionFlag.Done;
                return;
            } else {
                if (directionFlag.equals(CloudMessageBufferDBConstants.DirectionFlag.ToSendCloud) || directionFlag.equals(CloudMessageBufferDBConstants.DirectionFlag.UpdatingCloud) || directionFlag.equals(CloudMessageBufferDBConstants.DirectionFlag.UpdatingDevice)) {
                    paramSyncFlagsSet.mAction = CloudMessageBufferDBConstants.ActionStatusFlag.Delete;
                    paramSyncFlagsSet.mDirection = CloudMessageBufferDBConstants.DirectionFlag.UpdatingDevice;
                    return;
                }
                return;
            }
        }
        if (isChangedUpdateDirection(directionFlag)) {
            paramSyncFlagsSet.mIsChanged = false;
        }
    }

    private void handleInsertOperationForFlags(CloudMessageBufferDBConstants.DirectionFlag directionFlag, CloudMessageBufferDBConstants.ActionStatusFlag actionStatusFlag, ParamSyncFlagsSet paramSyncFlagsSet) {
        switch (AnonymousClass1.$SwitchMap$com$sec$internal$constants$ims$cmstore$CloudMessageBufferDBConstants$ActionStatusFlag[actionStatusFlag.ordinal()]) {
            case 1:
                if (directionFlag.equals(CloudMessageBufferDBConstants.DirectionFlag.ToSendCloud) || directionFlag.equals(CloudMessageBufferDBConstants.DirectionFlag.UpdatingCloud)) {
                    paramSyncFlagsSet.mDirection = CloudMessageBufferDBConstants.DirectionFlag.UpdatingCloud;
                    paramSyncFlagsSet.mAction = CloudMessageBufferDBConstants.ActionStatusFlag.Delete;
                    break;
                } else {
                    paramSyncFlagsSet.mIsChanged = false;
                    break;
                }
            case 2:
            case 11:
            case 12:
                if (!directionFlag.equals(CloudMessageBufferDBConstants.DirectionFlag.ToSendCloud) && !directionFlag.equals(CloudMessageBufferDBConstants.DirectionFlag.UpdatingCloud)) {
                    paramSyncFlagsSet.mIsChanged = false;
                    break;
                }
                break;
            case 3:
            case 7:
                if (directionFlag.equals(CloudMessageBufferDBConstants.DirectionFlag.ToSendCloud) || directionFlag.equals(CloudMessageBufferDBConstants.DirectionFlag.UpdatingCloud)) {
                    paramSyncFlagsSet.mDirection = CloudMessageBufferDBConstants.DirectionFlag.UpdatingCloud;
                    paramSyncFlagsSet.mAction = CloudMessageBufferDBConstants.ActionStatusFlag.Update;
                    break;
                } else {
                    paramSyncFlagsSet.mIsChanged = false;
                    break;
                }
            case 5:
            case 6:
            case 8:
                paramSyncFlagsSet.mIsChanged = false;
                break;
        }
    }

    private void handleUpdateOperationForFlags(CloudMessageBufferDBConstants.DirectionFlag directionFlag, CloudMessageBufferDBConstants.ActionStatusFlag actionStatusFlag, ParamSyncFlagsSet paramSyncFlagsSet) {
        switch (AnonymousClass1.$SwitchMap$com$sec$internal$constants$ims$cmstore$CloudMessageBufferDBConstants$ActionStatusFlag[actionStatusFlag.ordinal()]) {
            case 1:
                if (isChangedDeleteDirection(directionFlag)) {
                    paramSyncFlagsSet.mIsChanged = false;
                    break;
                } else if (directionFlag.equals(CloudMessageBufferDBConstants.DirectionFlag.ToSendCloud) || directionFlag.equals(CloudMessageBufferDBConstants.DirectionFlag.UpdatingCloud)) {
                    paramSyncFlagsSet.mDirection = CloudMessageBufferDBConstants.DirectionFlag.UpdatingCloud;
                    paramSyncFlagsSet.mAction = CloudMessageBufferDBConstants.ActionStatusFlag.Delete;
                    break;
                }
                break;
            case 2:
            case 11:
            case 12:
            case 13:
                if (isChangedDirection(directionFlag)) {
                    paramSyncFlagsSet.mIsChanged = false;
                    break;
                } else if (directionFlag.equals(CloudMessageBufferDBConstants.DirectionFlag.FetchingFail)) {
                    paramSyncFlagsSet.mDirection = CloudMessageBufferDBConstants.DirectionFlag.ToSendDevice;
                    paramSyncFlagsSet.mAction = CloudMessageBufferDBConstants.ActionStatusFlag.Insert;
                    break;
                }
                break;
            case 3:
            case 7:
                if (isChangedUpdateDirection(directionFlag)) {
                    paramSyncFlagsSet.mIsChanged = false;
                    break;
                } else if (directionFlag.equals(CloudMessageBufferDBConstants.DirectionFlag.FetchingFail)) {
                    paramSyncFlagsSet.mAction = CloudMessageBufferDBConstants.ActionStatusFlag.Update;
                    paramSyncFlagsSet.mDirection = CloudMessageBufferDBConstants.DirectionFlag.UpdatingDevice;
                    break;
                }
                break;
            case 5:
                if (directionFlag.equals(CloudMessageBufferDBConstants.DirectionFlag.Done)) {
                    paramSyncFlagsSet.mDirection = CloudMessageBufferDBConstants.DirectionFlag.UpdatingDevice;
                    paramSyncFlagsSet.mAction = CloudMessageBufferDBConstants.ActionStatusFlag.Update;
                    break;
                }
                break;
            case 6:
            case 8:
                paramSyncFlagsSet.mIsChanged = false;
                break;
        }
    }

    /* JADX WARN: Code restructure failed: missing block: B:33:0x0071, code lost:
    
        if (r3 != 12) goto L61;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public com.sec.internal.ims.cmstore.params.ParamSyncFlagsSet getSetFlagsForMsgResponse(int r6, long r7, com.sec.internal.constants.ims.cmstore.CloudMessageBufferDBConstants.DirectionFlag r9, com.sec.internal.constants.ims.cmstore.CloudMessageBufferDBConstants.ActionStatusFlag r10, com.sec.internal.constants.ims.cmstore.CloudMessageBufferDBConstants.ActionStatusFlag r11) {
        /*
            Method dump skipped, instructions count: 284
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: com.sec.internal.ims.cmstore.CloudMessageBufferDBEventSchedulingRule.getSetFlagsForMsgResponse(int, long, com.sec.internal.constants.ims.cmstore.CloudMessageBufferDBConstants$DirectionFlag, com.sec.internal.constants.ims.cmstore.CloudMessageBufferDBConstants$ActionStatusFlag, com.sec.internal.constants.ims.cmstore.CloudMessageBufferDBConstants$ActionStatusFlag):com.sec.internal.ims.cmstore.params.ParamSyncFlagsSet");
    }

    private void handleNewMsgResponse(CloudMessageBufferDBConstants.DirectionFlag directionFlag, CloudMessageBufferDBConstants.ActionStatusFlag actionStatusFlag, ParamSyncFlagsSet paramSyncFlagsSet) {
        if (actionStatusFlag.equals(CloudMessageBufferDBConstants.ActionStatusFlag.Update) || actionStatusFlag.equals(CloudMessageBufferDBConstants.ActionStatusFlag.Delete)) {
            updateRuleWithAction(directionFlag, paramSyncFlagsSet, actionStatusFlag);
            return;
        }
        if (actionStatusFlag.equals(CloudMessageBufferDBConstants.ActionStatusFlag.Deleted) || actionStatusFlag.equals(CloudMessageBufferDBConstants.ActionStatusFlag.UpdatePayload)) {
            paramSyncFlagsSet.mIsChanged = false;
            return;
        }
        CloudMessageBufferDBConstants.ActionStatusFlag actionStatusFlag2 = CloudMessageBufferDBConstants.ActionStatusFlag.DownLoad;
        if (actionStatusFlag.equals(actionStatusFlag2)) {
            paramSyncFlagsSet.mIsChanged = false;
            paramSyncFlagsSet.mAction = actionStatusFlag2;
            paramSyncFlagsSet.mDirection = CloudMessageBufferDBConstants.DirectionFlag.Downloading;
        }
    }

    private void updateRuleWithAction(CloudMessageBufferDBConstants.DirectionFlag directionFlag, ParamSyncFlagsSet paramSyncFlagsSet, CloudMessageBufferDBConstants.ActionStatusFlag actionStatusFlag) {
        if (directionFlag.equals(CloudMessageBufferDBConstants.DirectionFlag.ToSendCloud)) {
            paramSyncFlagsSet.mDirection = CloudMessageBufferDBConstants.DirectionFlag.UpdatingCloud;
            paramSyncFlagsSet.mAction = actionStatusFlag;
        } else if (directionFlag.equals(CloudMessageBufferDBConstants.DirectionFlag.ToSendDevice)) {
            paramSyncFlagsSet.mDirection = CloudMessageBufferDBConstants.DirectionFlag.UpdatingDevice;
            paramSyncFlagsSet.mAction = actionStatusFlag;
        } else if (directionFlag.equals(CloudMessageBufferDBConstants.DirectionFlag.UpdatingCloud) || directionFlag.equals(CloudMessageBufferDBConstants.DirectionFlag.UpdatingDevice)) {
            paramSyncFlagsSet.mIsChanged = false;
        }
    }

    private boolean isActionStatusFlag(CloudMessageBufferDBConstants.ActionStatusFlag actionStatusFlag) {
        return actionStatusFlag.equals(CloudMessageBufferDBConstants.ActionStatusFlag.Update) || actionStatusFlag.equals(CloudMessageBufferDBConstants.ActionStatusFlag.Delete) || actionStatusFlag.equals(CloudMessageBufferDBConstants.ActionStatusFlag.Insert) || actionStatusFlag.equals(CloudMessageBufferDBConstants.ActionStatusFlag.None) || actionStatusFlag.equals(CloudMessageBufferDBConstants.ActionStatusFlag.UpdatePayload) || actionStatusFlag.equals(CloudMessageBufferDBConstants.ActionStatusFlag.FetchUri) || actionStatusFlag.equals(CloudMessageBufferDBConstants.ActionStatusFlag.FetchIndividualUri);
    }

    private boolean isDirectionFlag(CloudMessageBufferDBConstants.DirectionFlag directionFlag) {
        return directionFlag.equals(CloudMessageBufferDBConstants.DirectionFlag.NmsEvent) || directionFlag.equals(CloudMessageBufferDBConstants.DirectionFlag.ToSendCloud) || directionFlag.equals(CloudMessageBufferDBConstants.DirectionFlag.ToSendDevice) || directionFlag.equals(CloudMessageBufferDBConstants.DirectionFlag.UpdatingCloud) || directionFlag.equals(CloudMessageBufferDBConstants.DirectionFlag.UpdatingDevice) || directionFlag.equals(CloudMessageBufferDBConstants.DirectionFlag.Done);
    }

    private boolean isChangedDirection(CloudMessageBufferDBConstants.DirectionFlag directionFlag) {
        return directionFlag.equals(CloudMessageBufferDBConstants.DirectionFlag.ToSendDevice) || directionFlag.equals(CloudMessageBufferDBConstants.DirectionFlag.UpdatingCloud) || directionFlag.equals(CloudMessageBufferDBConstants.DirectionFlag.UpdatingDevice) || directionFlag.equals(CloudMessageBufferDBConstants.DirectionFlag.Done) || directionFlag.equals(CloudMessageBufferDBConstants.DirectionFlag.NmsEvent);
    }

    private boolean isChangedDeleteDirection(CloudMessageBufferDBConstants.DirectionFlag directionFlag) {
        return directionFlag.equals(CloudMessageBufferDBConstants.DirectionFlag.ToSendDevice) || directionFlag.equals(CloudMessageBufferDBConstants.DirectionFlag.UpdatingDevice) || directionFlag.equals(CloudMessageBufferDBConstants.DirectionFlag.Done) || directionFlag.equals(CloudMessageBufferDBConstants.DirectionFlag.NmsEvent);
    }

    private boolean isChangedUpdateDirection(CloudMessageBufferDBConstants.DirectionFlag directionFlag) {
        return directionFlag.equals(CloudMessageBufferDBConstants.DirectionFlag.ToSendDevice) || directionFlag.equals(CloudMessageBufferDBConstants.DirectionFlag.UpdatingDevice) || directionFlag.equals(CloudMessageBufferDBConstants.DirectionFlag.NmsEvent);
    }

    public ParamSyncFlagsSet getSetFlagsForCldResponse(int i, long j, CloudMessageBufferDBConstants.DirectionFlag directionFlag, CloudMessageBufferDBConstants.ActionStatusFlag actionStatusFlag, CloudMessageBufferDBConstants.CloudResponseFlag cloudResponseFlag) {
        CloudMessageBufferDBConstants.DirectionFlag directionFlag2 = CloudMessageBufferDBConstants.DirectionFlag.Done;
        CloudMessageBufferDBConstants.ActionStatusFlag actionStatusFlag2 = CloudMessageBufferDBConstants.ActionStatusFlag.None;
        ParamSyncFlagsSet paramSyncFlagsSet = new ParamSyncFlagsSet(directionFlag2, actionStatusFlag2);
        int i2 = AnonymousClass1.$SwitchMap$com$sec$internal$constants$ims$cmstore$CloudMessageBufferDBConstants$CloudResponseFlag[cloudResponseFlag.ordinal()];
        if (i2 != 1) {
            if (i2 == 2) {
                CloudMessageBufferDBConstants.ActionStatusFlag actionStatusFlag3 = CloudMessageBufferDBConstants.ActionStatusFlag.Delete;
                if (actionStatusFlag.equals(actionStatusFlag3)) {
                    if (directionFlag.equals(CloudMessageBufferDBConstants.DirectionFlag.ToSendCloud)) {
                        paramSyncFlagsSet.mDirection = CloudMessageBufferDBConstants.DirectionFlag.UpdatingCloud;
                        paramSyncFlagsSet.mAction = actionStatusFlag3;
                    } else if (directionFlag.equals(CloudMessageBufferDBConstants.DirectionFlag.UpdatingCloud)) {
                        paramSyncFlagsSet.mIsChanged = false;
                    }
                } else if (actionStatusFlag.equals(CloudMessageBufferDBConstants.ActionStatusFlag.Deleted)) {
                    paramSyncFlagsSet.mIsChanged = false;
                }
            } else if (i2 == 3) {
                if (actionStatusFlag.equals(CloudMessageBufferDBConstants.ActionStatusFlag.Update)) {
                    if (handleActionStatusFlagUpdateWhenSetDelete(directionFlag)) {
                        paramSyncFlagsSet.mDirection = directionFlag2;
                        paramSyncFlagsSet.mAction = CloudMessageBufferDBConstants.ActionStatusFlag.Deleted;
                    }
                } else if (actionStatusFlag.equals(CloudMessageBufferDBConstants.ActionStatusFlag.Delete)) {
                    if (handleActionStatusFlagDeleteWhenSetDelete(directionFlag)) {
                        paramSyncFlagsSet.mDirection = directionFlag2;
                        paramSyncFlagsSet.mAction = CloudMessageBufferDBConstants.ActionStatusFlag.Deleted;
                    }
                } else if (actionStatusFlag.equals(CloudMessageBufferDBConstants.ActionStatusFlag.Insert) || actionStatusFlag.equals(actionStatusFlag2)) {
                    if (handleActionStatusFlagInsertOrNoneWhenSetDelete(directionFlag)) {
                        paramSyncFlagsSet.mDirection = directionFlag2;
                        paramSyncFlagsSet.mAction = CloudMessageBufferDBConstants.ActionStatusFlag.Deleted;
                    }
                } else if (actionStatusFlag.equals(CloudMessageBufferDBConstants.ActionStatusFlag.Deleted)) {
                    paramSyncFlagsSet.mIsChanged = false;
                }
            }
        } else if (actionStatusFlag.equals(CloudMessageBufferDBConstants.ActionStatusFlag.Update) || actionStatusFlag.equals(CloudMessageBufferDBConstants.ActionStatusFlag.Delete)) {
            if (directionFlag.equals(CloudMessageBufferDBConstants.DirectionFlag.ToSendCloud)) {
                paramSyncFlagsSet.mDirection = CloudMessageBufferDBConstants.DirectionFlag.UpdatingCloud;
                paramSyncFlagsSet.mAction = actionStatusFlag;
            } else if (directionFlag.equals(CloudMessageBufferDBConstants.DirectionFlag.UpdatingCloud)) {
                paramSyncFlagsSet.mIsChanged = false;
            }
        } else if (actionStatusFlag.equals(CloudMessageBufferDBConstants.ActionStatusFlag.Deleted)) {
            paramSyncFlagsSet.mIsChanged = false;
        }
        Log.d(TAG, "dbIndex: " + i + ", bufferId: " + j + ", getSetFlagsForCldResponse, origDir: " + directionFlag + " origAction: " + actionStatusFlag + " cldResponse: " + cloudResponseFlag + ", sync flag result :" + paramSyncFlagsSet.toString());
        return paramSyncFlagsSet;
    }

    /* renamed from: com.sec.internal.ims.cmstore.CloudMessageBufferDBEventSchedulingRule$1, reason: invalid class name */
    static /* synthetic */ class AnonymousClass1 {
        static final /* synthetic */ int[] $SwitchMap$com$sec$internal$constants$ims$cmstore$CloudMessageBufferDBConstants$ActionStatusFlag;
        static final /* synthetic */ int[] $SwitchMap$com$sec$internal$constants$ims$cmstore$CloudMessageBufferDBConstants$CloudResponseFlag;
        static final /* synthetic */ int[] $SwitchMap$com$sec$internal$constants$ims$cmstore$CloudMessageBufferDBConstants$MsgOperationFlag;

        static {
            int[] iArr = new int[CloudMessageBufferDBConstants.CloudResponseFlag.values().length];
            $SwitchMap$com$sec$internal$constants$ims$cmstore$CloudMessageBufferDBConstants$CloudResponseFlag = iArr;
            try {
                iArr[CloudMessageBufferDBConstants.CloudResponseFlag.Inserted.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                $SwitchMap$com$sec$internal$constants$ims$cmstore$CloudMessageBufferDBConstants$CloudResponseFlag[CloudMessageBufferDBConstants.CloudResponseFlag.SetRead.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                $SwitchMap$com$sec$internal$constants$ims$cmstore$CloudMessageBufferDBConstants$CloudResponseFlag[CloudMessageBufferDBConstants.CloudResponseFlag.SetDelete.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            int[] iArr2 = new int[CloudMessageBufferDBConstants.ActionStatusFlag.values().length];
            $SwitchMap$com$sec$internal$constants$ims$cmstore$CloudMessageBufferDBConstants$ActionStatusFlag = iArr2;
            try {
                iArr2[CloudMessageBufferDBConstants.ActionStatusFlag.Delete.ordinal()] = 1;
            } catch (NoSuchFieldError unused4) {
            }
            try {
                $SwitchMap$com$sec$internal$constants$ims$cmstore$CloudMessageBufferDBConstants$ActionStatusFlag[CloudMessageBufferDBConstants.ActionStatusFlag.Insert.ordinal()] = 2;
            } catch (NoSuchFieldError unused5) {
            }
            try {
                $SwitchMap$com$sec$internal$constants$ims$cmstore$CloudMessageBufferDBConstants$ActionStatusFlag[CloudMessageBufferDBConstants.ActionStatusFlag.Update.ordinal()] = 3;
            } catch (NoSuchFieldError unused6) {
            }
            try {
                $SwitchMap$com$sec$internal$constants$ims$cmstore$CloudMessageBufferDBConstants$ActionStatusFlag[CloudMessageBufferDBConstants.ActionStatusFlag.Cancel.ordinal()] = 4;
            } catch (NoSuchFieldError unused7) {
            }
            try {
                $SwitchMap$com$sec$internal$constants$ims$cmstore$CloudMessageBufferDBConstants$ActionStatusFlag[CloudMessageBufferDBConstants.ActionStatusFlag.None.ordinal()] = 5;
            } catch (NoSuchFieldError unused8) {
            }
            try {
                $SwitchMap$com$sec$internal$constants$ims$cmstore$CloudMessageBufferDBConstants$ActionStatusFlag[CloudMessageBufferDBConstants.ActionStatusFlag.DownLoad.ordinal()] = 6;
            } catch (NoSuchFieldError unused9) {
            }
            try {
                $SwitchMap$com$sec$internal$constants$ims$cmstore$CloudMessageBufferDBConstants$ActionStatusFlag[CloudMessageBufferDBConstants.ActionStatusFlag.UpdatePayload.ordinal()] = 7;
            } catch (NoSuchFieldError unused10) {
            }
            try {
                $SwitchMap$com$sec$internal$constants$ims$cmstore$CloudMessageBufferDBConstants$ActionStatusFlag[CloudMessageBufferDBConstants.ActionStatusFlag.Deleted.ordinal()] = 8;
            } catch (NoSuchFieldError unused11) {
            }
            try {
                $SwitchMap$com$sec$internal$constants$ims$cmstore$CloudMessageBufferDBConstants$ActionStatusFlag[CloudMessageBufferDBConstants.ActionStatusFlag.Starred.ordinal()] = 9;
            } catch (NoSuchFieldError unused12) {
            }
            try {
                $SwitchMap$com$sec$internal$constants$ims$cmstore$CloudMessageBufferDBConstants$ActionStatusFlag[CloudMessageBufferDBConstants.ActionStatusFlag.UnStarred.ordinal()] = 10;
            } catch (NoSuchFieldError unused13) {
            }
            try {
                $SwitchMap$com$sec$internal$constants$ims$cmstore$CloudMessageBufferDBConstants$ActionStatusFlag[CloudMessageBufferDBConstants.ActionStatusFlag.FetchUri.ordinal()] = 11;
            } catch (NoSuchFieldError unused14) {
            }
            try {
                $SwitchMap$com$sec$internal$constants$ims$cmstore$CloudMessageBufferDBConstants$ActionStatusFlag[CloudMessageBufferDBConstants.ActionStatusFlag.FetchIndividualUri.ordinal()] = 12;
            } catch (NoSuchFieldError unused15) {
            }
            try {
                $SwitchMap$com$sec$internal$constants$ims$cmstore$CloudMessageBufferDBConstants$ActionStatusFlag[CloudMessageBufferDBConstants.ActionStatusFlag.FetchForce.ordinal()] = 13;
            } catch (NoSuchFieldError unused16) {
            }
            int[] iArr3 = new int[CloudMessageBufferDBConstants.MsgOperationFlag.values().length];
            $SwitchMap$com$sec$internal$constants$ims$cmstore$CloudMessageBufferDBConstants$MsgOperationFlag = iArr3;
            try {
                iArr3[CloudMessageBufferDBConstants.MsgOperationFlag.Read.ordinal()] = 1;
            } catch (NoSuchFieldError unused17) {
            }
            try {
                $SwitchMap$com$sec$internal$constants$ims$cmstore$CloudMessageBufferDBConstants$MsgOperationFlag[CloudMessageBufferDBConstants.MsgOperationFlag.Delete.ordinal()] = 2;
            } catch (NoSuchFieldError unused18) {
            }
            try {
                $SwitchMap$com$sec$internal$constants$ims$cmstore$CloudMessageBufferDBConstants$MsgOperationFlag[CloudMessageBufferDBConstants.MsgOperationFlag.Sent.ordinal()] = 3;
            } catch (NoSuchFieldError unused19) {
            }
            try {
                $SwitchMap$com$sec$internal$constants$ims$cmstore$CloudMessageBufferDBConstants$MsgOperationFlag[CloudMessageBufferDBConstants.MsgOperationFlag.Received.ordinal()] = 4;
            } catch (NoSuchFieldError unused20) {
            }
            try {
                $SwitchMap$com$sec$internal$constants$ims$cmstore$CloudMessageBufferDBConstants$MsgOperationFlag[CloudMessageBufferDBConstants.MsgOperationFlag.Cancel.ordinal()] = 5;
            } catch (NoSuchFieldError unused21) {
            }
            try {
                $SwitchMap$com$sec$internal$constants$ims$cmstore$CloudMessageBufferDBConstants$MsgOperationFlag[CloudMessageBufferDBConstants.MsgOperationFlag.Sending.ordinal()] = 6;
            } catch (NoSuchFieldError unused22) {
            }
            try {
                $SwitchMap$com$sec$internal$constants$ims$cmstore$CloudMessageBufferDBConstants$MsgOperationFlag[CloudMessageBufferDBConstants.MsgOperationFlag.SendFail.ordinal()] = 7;
            } catch (NoSuchFieldError unused23) {
            }
            try {
                $SwitchMap$com$sec$internal$constants$ims$cmstore$CloudMessageBufferDBConstants$MsgOperationFlag[CloudMessageBufferDBConstants.MsgOperationFlag.Receiving.ordinal()] = 8;
            } catch (NoSuchFieldError unused24) {
            }
            try {
                $SwitchMap$com$sec$internal$constants$ims$cmstore$CloudMessageBufferDBConstants$MsgOperationFlag[CloudMessageBufferDBConstants.MsgOperationFlag.Starred.ordinal()] = 9;
            } catch (NoSuchFieldError unused25) {
            }
            try {
                $SwitchMap$com$sec$internal$constants$ims$cmstore$CloudMessageBufferDBConstants$MsgOperationFlag[CloudMessageBufferDBConstants.MsgOperationFlag.UnStarred.ordinal()] = 10;
            } catch (NoSuchFieldError unused26) {
            }
            try {
                $SwitchMap$com$sec$internal$constants$ims$cmstore$CloudMessageBufferDBConstants$MsgOperationFlag[CloudMessageBufferDBConstants.MsgOperationFlag.Spam.ordinal()] = 11;
            } catch (NoSuchFieldError unused27) {
            }
            try {
                $SwitchMap$com$sec$internal$constants$ims$cmstore$CloudMessageBufferDBConstants$MsgOperationFlag[CloudMessageBufferDBConstants.MsgOperationFlag.Trash.ordinal()] = 12;
            } catch (NoSuchFieldError unused28) {
            }
            try {
                $SwitchMap$com$sec$internal$constants$ims$cmstore$CloudMessageBufferDBConstants$MsgOperationFlag[CloudMessageBufferDBConstants.MsgOperationFlag.Restore.ordinal()] = 13;
            } catch (NoSuchFieldError unused29) {
            }
        }
    }

    private boolean handleActionStatusFlagDeleteWhenSetDelete(CloudMessageBufferDBConstants.DirectionFlag directionFlag) {
        return directionFlag.equals(CloudMessageBufferDBConstants.DirectionFlag.NmsEvent) || directionFlag.equals(CloudMessageBufferDBConstants.DirectionFlag.ToSendCloud) || directionFlag.equals(CloudMessageBufferDBConstants.DirectionFlag.ToSendDevice) || directionFlag.equals(CloudMessageBufferDBConstants.DirectionFlag.UpdatingCloud) || directionFlag.equals(CloudMessageBufferDBConstants.DirectionFlag.UpdatingDevice);
    }

    private boolean handleActionStatusFlagInsertOrNoneWhenSetDelete(CloudMessageBufferDBConstants.DirectionFlag directionFlag) {
        return directionFlag.equals(CloudMessageBufferDBConstants.DirectionFlag.NmsEvent) || directionFlag.equals(CloudMessageBufferDBConstants.DirectionFlag.ToSendCloud) || directionFlag.equals(CloudMessageBufferDBConstants.DirectionFlag.ToSendDevice) || directionFlag.equals(CloudMessageBufferDBConstants.DirectionFlag.UpdatingCloud) || directionFlag.equals(CloudMessageBufferDBConstants.DirectionFlag.UpdatingDevice) || directionFlag.equals(CloudMessageBufferDBConstants.DirectionFlag.Done);
    }

    private boolean handleActionStatusFlagUpdateWhenSetDelete(CloudMessageBufferDBConstants.DirectionFlag directionFlag) {
        return directionFlag.equals(CloudMessageBufferDBConstants.DirectionFlag.ToSendCloud) || directionFlag.equals(CloudMessageBufferDBConstants.DirectionFlag.ToSendDevice) || directionFlag.equals(CloudMessageBufferDBConstants.DirectionFlag.UpdatingCloud) || directionFlag.equals(CloudMessageBufferDBConstants.DirectionFlag.UpdatingDevice) || directionFlag.equals(CloudMessageBufferDBConstants.DirectionFlag.Done);
    }
}
