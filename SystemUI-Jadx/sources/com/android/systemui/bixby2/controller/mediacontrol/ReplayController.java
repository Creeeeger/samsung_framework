package com.android.systemui.bixby2.controller.mediacontrol;

import com.android.systemui.bixby2.CommandActionResponse;
import com.android.systemui.bixby2.actionresult.ActionResults;
import com.android.systemui.bixby2.controller.mediacontrol.MediaCommandType;

/* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
/* loaded from: classes.dex */
public final class ReplayController extends MediaCommandType {
    @Override // com.android.systemui.bixby2.controller.mediacontrol.MediaCommandType
    public CommandActionResponse action() {
        MediaCommandType.Companion companion = MediaCommandType.Companion;
        if (companion.isMediaControlActive(companion.getMediaInfo().isMediaActive) && isMusicAvailable()) {
            if (isValidAction(256L)) {
                companion.getMediaController().getTransportControls().seekTo(0L);
            } else {
                sendMediaKeyEvent(88);
            }
            return new CommandActionResponse(1, "success");
        }
        return new CommandActionResponse(2, ActionResults.RESULT_NO_MEDIA_EXISTS);
    }
}
