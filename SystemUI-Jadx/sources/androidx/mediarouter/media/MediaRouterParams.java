package androidx.mediarouter.media;

import android.os.Bundle;

/* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
/* loaded from: classes.dex */
public final class MediaRouterParams {
    public final int mDialogType;
    public final Bundle mExtras;
    public final boolean mMediaTransferReceiverEnabled;
    public final boolean mOutputSwitcherEnabled;
    public final boolean mTransferToLocalEnabled;

    public MediaRouterParams(Builder builder) {
        Bundle bundle;
        this.mDialogType = builder.mDialogType;
        this.mMediaTransferReceiverEnabled = builder.mMediaTransferEnabled;
        this.mOutputSwitcherEnabled = builder.mOutputSwitcherEnabled;
        this.mTransferToLocalEnabled = builder.mTransferToLocalEnabled;
        Bundle bundle2 = builder.mExtras;
        if (bundle2 == null) {
            bundle = Bundle.EMPTY;
        } else {
            bundle = new Bundle(bundle2);
        }
        this.mExtras = bundle;
    }

    /* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
    /* loaded from: classes.dex */
    public final class Builder {
        public final int mDialogType;
        public final Bundle mExtras;
        public final boolean mMediaTransferEnabled;
        public final boolean mOutputSwitcherEnabled;
        public final boolean mTransferToLocalEnabled;

        public Builder() {
            this.mDialogType = 1;
            this.mMediaTransferEnabled = true;
        }

        public Builder(MediaRouterParams mediaRouterParams) {
            this.mDialogType = 1;
            this.mMediaTransferEnabled = true;
            if (mediaRouterParams != null) {
                this.mDialogType = mediaRouterParams.mDialogType;
                this.mOutputSwitcherEnabled = mediaRouterParams.mOutputSwitcherEnabled;
                this.mTransferToLocalEnabled = mediaRouterParams.mTransferToLocalEnabled;
                this.mMediaTransferEnabled = mediaRouterParams.mMediaTransferReceiverEnabled;
                Bundle bundle = mediaRouterParams.mExtras;
                this.mExtras = bundle == null ? null : new Bundle(bundle);
                return;
            }
            throw new NullPointerException("params should not be null!");
        }
    }
}
