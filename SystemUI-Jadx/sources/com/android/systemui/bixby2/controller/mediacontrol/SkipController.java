package com.android.systemui.bixby2.controller.mediacontrol;

import com.android.systemui.bixby2.CommandActionResponse;
import com.android.systemui.bixby2.actionresult.ActionResults;

/* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
/* loaded from: classes.dex */
public final class SkipController extends MediaCommandType {
    @Override // com.android.systemui.bixby2.controller.mediacontrol.MediaCommandType
    public CommandActionResponse action() {
        if (isMusicAvailable()) {
            sendMediaKeyEvent(87);
            return new CommandActionResponse(1, "success");
        }
        return new CommandActionResponse(2, ActionResults.RESULT_NO_MEDIA_EXISTS);
    }
}
