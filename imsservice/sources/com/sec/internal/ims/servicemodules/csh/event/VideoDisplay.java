package com.sec.internal.ims.servicemodules.csh.event;

import android.view.Surface;

/* loaded from: classes.dex */
public class VideoDisplay implements IVideoDisplay {
    private final int mColor;
    private final Surface mWindowHandle;

    public VideoDisplay(Surface surface, int i) {
        this.mWindowHandle = surface;
        this.mColor = i;
    }

    @Override // com.sec.internal.ims.servicemodules.csh.event.IVideoDisplay
    public Surface getWindowHandle() {
        return this.mWindowHandle;
    }

    @Override // com.sec.internal.ims.servicemodules.csh.event.IVideoDisplay
    public int getColor() {
        return this.mColor;
    }
}
