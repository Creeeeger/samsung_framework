package com.android.systemui.volume;

import android.widget.ImageButton;
import com.android.systemui.volume.VolumeDialogImpl;

/* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
/* loaded from: classes2.dex */
public final /* synthetic */ class VolumeDialogImpl$$ExternalSyntheticLambda12 implements Runnable {
    public final /* synthetic */ int $r8$classId;
    public final /* synthetic */ Object f$0;

    public /* synthetic */ VolumeDialogImpl$$ExternalSyntheticLambda12(Object obj, int i) {
        this.$r8$classId = i;
        this.f$0 = obj;
    }

    @Override // java.lang.Runnable
    public final void run() {
        switch (this.$r8$classId) {
            case 0:
                ImageButton imageButton = (ImageButton) this.f$0;
                if (imageButton != null) {
                    imageButton.setPressed(false);
                    return;
                }
                return;
            default:
                VolumeDialogImpl.RingerDrawerItemClickListener ringerDrawerItemClickListener = (VolumeDialogImpl.RingerDrawerItemClickListener) this.f$0;
                ringerDrawerItemClickListener.this$0.mRingerDrawerNewSelectionBg.setAlpha(0.0f);
                if (!ringerDrawerItemClickListener.this$0.isLandscape()) {
                    VolumeDialogImpl volumeDialogImpl = ringerDrawerItemClickListener.this$0;
                    volumeDialogImpl.mSelectedRingerContainer.setTranslationY(volumeDialogImpl.getTranslationInDrawerForRingerMode(ringerDrawerItemClickListener.mClickedRingerMode));
                } else {
                    VolumeDialogImpl volumeDialogImpl2 = ringerDrawerItemClickListener.this$0;
                    volumeDialogImpl2.mSelectedRingerContainer.setTranslationX(volumeDialogImpl2.getTranslationInDrawerForRingerMode(ringerDrawerItemClickListener.mClickedRingerMode));
                }
                ringerDrawerItemClickListener.this$0.mSelectedRingerContainer.setVisibility(0);
                ringerDrawerItemClickListener.this$0.hideRingerDrawer();
                return;
        }
    }
}
