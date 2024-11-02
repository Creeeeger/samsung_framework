package com.android.systemui.qp;

import android.content.Context;
import android.util.Log;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageView;
import androidx.viewpager.widget.PagerAdapter;
import com.android.systemui.Dependency;
import com.android.systemui.R;
import com.android.systemui.knox.KnoxStateMonitor;
import com.android.systemui.knox.KnoxStateMonitorImpl;
import com.android.systemui.qp.flashlight.SubscreenFlashLightController;
import com.android.systemui.util.SystemUIAnalytics;

/* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
/* loaded from: classes2.dex */
public final class ViewPagerAdapter extends PagerAdapter {
    public final Context context;
    public ImageView mBrightnessButton;
    public ImageView mFlashLightButton;
    public SubRoomButtonListener subRoomButtonListener;

    /* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
    /* loaded from: classes2.dex */
    public interface SubRoomButtonListener {
    }

    public ViewPagerAdapter(Context context) {
        this.context = context;
    }

    @Override // androidx.viewpager.widget.PagerAdapter
    public final void destroyItem(ViewGroup viewGroup, int i, Object obj) {
        ((RTLViewPager) viewGroup).removeView((View) obj);
    }

    @Override // androidx.viewpager.widget.PagerAdapter
    public final int getCount() {
        return 2;
    }

    @Override // androidx.viewpager.widget.PagerAdapter
    public final Object instantiateItem(ViewGroup viewGroup, int i) {
        LayoutInflater from = LayoutInflater.from(this.context);
        final int i2 = 0;
        if (i != 0) {
            final int i3 = 1;
            if (i != 1) {
                return null;
            }
            View inflate = from.inflate(R.layout.page_two_layout, (ViewGroup) null);
            ImageView imageView = (ImageView) inflate.findViewById(R.id.brightness_image_view);
            this.mBrightnessButton = imageView;
            imageView.setOnClickListener(new View.OnClickListener(this) { // from class: com.android.systemui.qp.ViewPagerAdapter$$ExternalSyntheticLambda0
                public final /* synthetic */ ViewPagerAdapter f$0;

                {
                    this.f$0 = this;
                }

                @Override // android.view.View.OnClickListener
                public final void onClick(View view) {
                    switch (i2) {
                        case 0:
                            ViewPagerAdapter viewPagerAdapter = this.f$0;
                            viewPagerAdapter.getClass();
                            if (((KnoxStateMonitorImpl) ((KnoxStateMonitor) Dependency.get(KnoxStateMonitor.class))).isBrightnessBlocked()) {
                                Log.d("ViewPagerAdapter", "Subscreen Brightness tile not available by KnoxStateMonitor.");
                            } else {
                                final SubroomQuickSettingsBaseView subroomQuickSettingsBaseView = (SubroomQuickSettingsBaseView) viewPagerAdapter.subRoomButtonListener;
                                subroomQuickSettingsBaseView.setSubscreenSettings(3);
                                subroomQuickSettingsBaseView.mBackButton.setOnClickListener(new View.OnClickListener() { // from class: com.android.systemui.qp.SubroomQuickSettingsBaseView$$ExternalSyntheticLambda0
                                    @Override // android.view.View.OnClickListener
                                    public final void onClick(View view2) {
                                        SubroomQuickSettingsBaseView subroomQuickSettingsBaseView2 = SubroomQuickSettingsBaseView.this;
                                        int i4 = SubroomQuickSettingsBaseView.$r8$clinit;
                                        subroomQuickSettingsBaseView2.setSubscreenSettings(0);
                                    }
                                });
                            }
                            SystemUIAnalytics.sendEventLog(SystemUIAnalytics.sCurrentScreenID, "QPBE2006");
                            return;
                        default:
                            ViewPagerAdapter viewPagerAdapter2 = this.f$0;
                            viewPagerAdapter2.getClass();
                            if (((KnoxStateMonitorImpl) ((KnoxStateMonitor) Dependency.get(KnoxStateMonitor.class))).isFlashlightTileBlocked()) {
                                Log.d("ViewPagerAdapter", "Subscreen Flashlight tile not available by KnoxStateMonitor.");
                                return;
                            }
                            SubroomQuickSettingsBaseView subroomQuickSettingsBaseView2 = (SubroomQuickSettingsBaseView) viewPagerAdapter2.subRoomButtonListener;
                            subroomQuickSettingsBaseView2.getClass();
                            Log.d("SubroomQuickSettingsBaseView", "isFlashLightButtonClicked: ");
                            SubscreenFlashLightController subscreenFlashLightController = subroomQuickSettingsBaseView2.mSubscreenFlashlightController;
                            if (subscreenFlashLightController != null) {
                                subscreenFlashLightController.startFlashActivity();
                                return;
                            }
                            return;
                    }
                }
            });
            this.mBrightnessButton.setOnLongClickListener(new View.OnLongClickListener() { // from class: com.android.systemui.qp.ViewPagerAdapter$$ExternalSyntheticLambda1
                @Override // android.view.View.OnLongClickListener
                public final boolean onLongClick(View view) {
                    switch (i2) {
                        case 0:
                            Log.d("ViewPagerAdapter", "addClickBrightnessListeners mBrightnessButton onLongClick");
                            return true;
                        default:
                            Log.d("ViewPagerAdapter", "addClickBrightnessListeners mFlashLightButton onLongClick");
                            return true;
                    }
                }
            });
            ImageView imageView2 = (ImageView) inflate.findViewById(R.id.flashlight_image_view);
            this.mFlashLightButton = imageView2;
            imageView2.setOnClickListener(new View.OnClickListener(this) { // from class: com.android.systemui.qp.ViewPagerAdapter$$ExternalSyntheticLambda0
                public final /* synthetic */ ViewPagerAdapter f$0;

                {
                    this.f$0 = this;
                }

                @Override // android.view.View.OnClickListener
                public final void onClick(View view) {
                    switch (i3) {
                        case 0:
                            ViewPagerAdapter viewPagerAdapter = this.f$0;
                            viewPagerAdapter.getClass();
                            if (((KnoxStateMonitorImpl) ((KnoxStateMonitor) Dependency.get(KnoxStateMonitor.class))).isBrightnessBlocked()) {
                                Log.d("ViewPagerAdapter", "Subscreen Brightness tile not available by KnoxStateMonitor.");
                            } else {
                                final SubroomQuickSettingsBaseView subroomQuickSettingsBaseView = (SubroomQuickSettingsBaseView) viewPagerAdapter.subRoomButtonListener;
                                subroomQuickSettingsBaseView.setSubscreenSettings(3);
                                subroomQuickSettingsBaseView.mBackButton.setOnClickListener(new View.OnClickListener() { // from class: com.android.systemui.qp.SubroomQuickSettingsBaseView$$ExternalSyntheticLambda0
                                    @Override // android.view.View.OnClickListener
                                    public final void onClick(View view2) {
                                        SubroomQuickSettingsBaseView subroomQuickSettingsBaseView2 = SubroomQuickSettingsBaseView.this;
                                        int i4 = SubroomQuickSettingsBaseView.$r8$clinit;
                                        subroomQuickSettingsBaseView2.setSubscreenSettings(0);
                                    }
                                });
                            }
                            SystemUIAnalytics.sendEventLog(SystemUIAnalytics.sCurrentScreenID, "QPBE2006");
                            return;
                        default:
                            ViewPagerAdapter viewPagerAdapter2 = this.f$0;
                            viewPagerAdapter2.getClass();
                            if (((KnoxStateMonitorImpl) ((KnoxStateMonitor) Dependency.get(KnoxStateMonitor.class))).isFlashlightTileBlocked()) {
                                Log.d("ViewPagerAdapter", "Subscreen Flashlight tile not available by KnoxStateMonitor.");
                                return;
                            }
                            SubroomQuickSettingsBaseView subroomQuickSettingsBaseView2 = (SubroomQuickSettingsBaseView) viewPagerAdapter2.subRoomButtonListener;
                            subroomQuickSettingsBaseView2.getClass();
                            Log.d("SubroomQuickSettingsBaseView", "isFlashLightButtonClicked: ");
                            SubscreenFlashLightController subscreenFlashLightController = subroomQuickSettingsBaseView2.mSubscreenFlashlightController;
                            if (subscreenFlashLightController != null) {
                                subscreenFlashLightController.startFlashActivity();
                                return;
                            }
                            return;
                    }
                }
            });
            this.mFlashLightButton.setOnLongClickListener(new View.OnLongClickListener() { // from class: com.android.systemui.qp.ViewPagerAdapter$$ExternalSyntheticLambda1
                @Override // android.view.View.OnLongClickListener
                public final boolean onLongClick(View view) {
                    switch (i3) {
                        case 0:
                            Log.d("ViewPagerAdapter", "addClickBrightnessListeners mBrightnessButton onLongClick");
                            return true;
                        default:
                            Log.d("ViewPagerAdapter", "addClickBrightnessListeners mFlashLightButton onLongClick");
                            return true;
                    }
                }
            });
            ((RTLViewPager) viewGroup).addView(inflate, 0);
            return inflate;
        }
        View inflate2 = from.inflate(R.layout.page_one_layout, (ViewGroup) null);
        ((RTLViewPager) viewGroup).addView(inflate2, 0);
        return inflate2;
    }

    @Override // androidx.viewpager.widget.PagerAdapter
    public final boolean isViewFromObject(View view, Object obj) {
        if (view == obj) {
            return true;
        }
        return false;
    }
}
