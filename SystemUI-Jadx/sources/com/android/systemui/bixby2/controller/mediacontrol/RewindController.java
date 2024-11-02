package com.android.systemui.bixby2.controller.mediacontrol;

import com.android.systemui.bixby2.CommandActionResponse;
import com.android.systemui.bixby2.actionresult.ActionResults;

/* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
/* loaded from: classes.dex */
public final class RewindController extends MediaCommandType {
    @Override // com.android.systemui.bixby2.controller.mediacontrol.MediaCommandType
    public CommandActionResponse action() {
        if (isPlayingOrFocused()) {
            if (isValidAction(8L)) {
                sendMediaKeyEvent(89);
                return new CommandActionResponse(1, "success");
            }
            return new CommandActionResponse(2, ActionResults.RESULT_NO_SUPPORT_FEATURE);
        }
        return new CommandActionResponse(2, ActionResults.RESULT_MEDIA_NOT_PLAYING);
    }
}
