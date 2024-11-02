package com.android.systemui.statusbar.phone;

import android.graphics.drawable.Icon;
import android.os.Bundle;
import android.os.UserHandle;
import android.util.Log;
import android.view.View;
import android.view.ViewGroup;
import android.widget.LinearLayout;
import com.android.internal.statusbar.StatusBarIcon;
import com.android.systemui.R;
import com.android.systemui.demomode.DemoMode;
import com.android.systemui.plugins.DarkIconDispatcher;
import com.android.systemui.statusbar.StatusBarIconView;
import com.android.systemui.statusbar.StatusBarMobileView;
import com.android.systemui.statusbar.StatusBarWifiView;
import com.android.systemui.statusbar.StatusIconDisplayable;
import com.android.systemui.statusbar.phone.StatusBarSignalPolicy;
import com.android.systemui.statusbar.pipeline.mobile.ui.view.ModernStatusBarMobileView;
import com.android.systemui.statusbar.pipeline.mobile.ui.viewmodel.MobileIconsViewModel;
import com.android.systemui.statusbar.pipeline.wifi.ui.view.ModernStatusBarWifiView;
import com.android.systemui.statusbar.pipeline.wifi.ui.viewmodel.LocationBasedWifiViewModel;
import com.sec.ims.IMSParameter;
import com.sec.ims.gls.GlsIntent;
import com.sec.ims.settings.ImsProfile;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

/* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
/* loaded from: classes2.dex */
public final class DemoStatusIcons extends StatusIconContainer implements DemoMode, DarkIconDispatcher.DarkReceiver {
    public int mColor;
    public boolean mDemoMode;
    public final int mIconSize;
    public final StatusBarLocation mLocation;
    public final MobileIconsViewModel mMobileIconsViewModel;
    public final ArrayList mMobileViews;
    public final ArrayList mModernMobileViews;
    public ModernStatusBarWifiView mModernWifiView;
    public final LinearLayout mStatusIcons;
    public StatusBarWifiView mWifiView;

    public DemoStatusIcons(LinearLayout linearLayout, MobileIconsViewModel mobileIconsViewModel, StatusBarLocation statusBarLocation, int i) {
        super(linearLayout.getContext());
        this.mMobileViews = new ArrayList();
        this.mModernMobileViews = new ArrayList();
        this.mStatusIcons = linearLayout;
        this.mIconSize = i;
        this.mColor = -301989889;
        this.mMobileIconsViewModel = mobileIconsViewModel;
        this.mLocation = statusBarLocation;
        if (linearLayout instanceof StatusIconContainer) {
            this.mShouldRestrictIcons = ((StatusIconContainer) linearLayout).mShouldRestrictIcons;
        } else {
            this.mShouldRestrictIcons = false;
        }
        setLayoutParams(linearLayout.getLayoutParams());
        setPadding(linearLayout.getPaddingLeft(), linearLayout.getPaddingTop(), linearLayout.getPaddingRight(), linearLayout.getPaddingBottom());
        setOrientation(linearLayout.getOrientation());
        setGravity(16);
        ViewGroup viewGroup = (ViewGroup) linearLayout.getParent();
        viewGroup.addView(this, viewGroup.indexOfChild(linearLayout));
    }

    public final void addDemoWifiView(StatusBarSignalPolicy.WifiIconState wifiIconState) {
        Log.d("DemoStatusIcons", "addDemoWifiView: ");
        StatusBarWifiView fromContext = StatusBarWifiView.fromContext(((LinearLayout) this).mContext, wifiIconState.slot);
        int childCount = getChildCount();
        for (int i = 0; i < getChildCount(); i++) {
            View childAt = getChildAt(i);
            if ((childAt instanceof StatusBarMobileView) || (childAt instanceof ModernStatusBarMobileView)) {
                childCount = i;
                break;
            }
        }
        this.mWifiView = fromContext;
        fromContext.applyWifiState(wifiIconState);
        this.mWifiView.setStaticDrawableColor(this.mColor);
        addView(fromContext, childCount, new LinearLayout.LayoutParams(-2, this.mIconSize));
    }

    public final void addModernWifiView(LocationBasedWifiViewModel locationBasedWifiViewModel) {
        Log.d("DemoStatusIcons", "addModernDemoWifiView: ");
        ModernStatusBarWifiView constructAndBind = ModernStatusBarWifiView.constructAndBind(((LinearLayout) this).mContext, ImsProfile.PDN_WIFI, locationBasedWifiViewModel);
        int childCount = getChildCount();
        for (int i = 0; i < getChildCount(); i++) {
            View childAt = getChildAt(i);
            if ((childAt instanceof StatusBarMobileView) || (childAt instanceof ModernStatusBarMobileView)) {
                childCount = i;
                break;
            }
        }
        this.mModernWifiView = constructAndBind;
        constructAndBind.setStaticDrawableColor(this.mColor);
        addView(constructAndBind, childCount, new LinearLayout.LayoutParams(-2, this.mIconSize));
    }

    @Override // com.android.systemui.demomode.DemoMode
    public final List demoCommands() {
        ArrayList arrayList = new ArrayList();
        arrayList.add(IMSParameter.CALL.STATUS);
        return arrayList;
    }

    @Override // com.android.systemui.demomode.DemoModeCommandReceiver
    public final void dispatchDemoCommand(Bundle bundle, String str) {
        int i;
        int i2;
        int i3;
        int i4;
        int i5;
        int i6;
        int i7;
        int i8;
        int i9;
        String string = bundle.getString("volume");
        int i10 = 0;
        if (string != null) {
            if (string.equals("vibrate")) {
                i9 = R.drawable.stat_sys_ringer_vibrate;
            } else {
                i9 = 0;
            }
            updateSlot(i9, "volume");
        }
        String string2 = bundle.getString("zen");
        if (string2 != null) {
            if (string2.equals("dnd")) {
                i8 = R.drawable.stat_sys_dnd;
            } else {
                i8 = 0;
            }
            updateSlot(i8, "zen");
        }
        String string3 = bundle.getString("bluetooth");
        if (string3 != null) {
            if (string3.equals("connected")) {
                i7 = R.drawable.stat_sys_data_bluetooth_connected;
            } else {
                i7 = 0;
            }
            updateSlot(i7, "bluetooth");
        }
        String string4 = bundle.getString(GlsIntent.Extras.EXTRA_LOCATION);
        if (string4 != null) {
            if (string4.equals("show")) {
                i6 = PhoneStatusBarPolicy.LOCATION_STATUS_ICON_ID;
            } else {
                i6 = 0;
            }
            updateSlot(i6, GlsIntent.Extras.EXTRA_LOCATION);
        }
        String string5 = bundle.getString("alarm");
        if (string5 != null) {
            if (string5.equals("show")) {
                i5 = R.drawable.stat_sys_alarm;
            } else {
                i5 = 0;
            }
            updateSlot(i5, "alarm_clock");
        }
        String string6 = bundle.getString("tty");
        if (string6 != null) {
            if (string6.equals("show")) {
                i4 = R.drawable.stat_sys_tty_mode;
            } else {
                i4 = 0;
            }
            updateSlot(i4, "tty");
        }
        String string7 = bundle.getString("mute");
        if (string7 != null) {
            if (string7.equals("show")) {
                i3 = android.R.drawable.stat_notify_call_mute;
            } else {
                i3 = 0;
            }
            updateSlot(i3, "mute");
        }
        String string8 = bundle.getString("speakerphone");
        if (string8 != null) {
            if (string8.equals("show")) {
                i2 = android.R.drawable.stat_sys_speakerphone;
            } else {
                i2 = 0;
            }
            updateSlot(i2, "speakerphone");
        }
        String string9 = bundle.getString("cast");
        if (string9 != null) {
            if (string9.equals("show")) {
                i = R.drawable.stat_sys_cast;
            } else {
                i = 0;
            }
            updateSlot(i, "cast");
        }
        String string10 = bundle.getString("hotspot");
        if (string10 != null) {
            if (string10.equals("show")) {
                i10 = R.drawable.stat_sys_hotspot;
            }
            updateSlot(i10, "hotspot");
        }
    }

    @Override // com.android.systemui.plugins.DarkIconDispatcher.DarkReceiver
    public final void onDarkChanged(ArrayList arrayList, float f, int i) {
        setColor(DarkIconDispatcher.getTint(arrayList, this.mStatusIcons, i));
        StatusBarWifiView statusBarWifiView = this.mWifiView;
        if (statusBarWifiView != null) {
            statusBarWifiView.onDarkChanged(arrayList, f, i);
        }
        ModernStatusBarWifiView modernStatusBarWifiView = this.mModernWifiView;
        if (modernStatusBarWifiView != null) {
            modernStatusBarWifiView.onDarkChanged(arrayList, f, i);
        }
        Iterator it = this.mMobileViews.iterator();
        while (it.hasNext()) {
            ((StatusBarMobileView) it.next()).onDarkChanged(arrayList, f, i);
        }
        Iterator it2 = this.mModernMobileViews.iterator();
        while (it2.hasNext()) {
            ((ModernStatusBarMobileView) it2.next()).onDarkChanged(arrayList, f, i);
        }
    }

    @Override // com.android.systemui.demomode.DemoModeCommandReceiver
    public final void onDemoModeFinished() {
        this.mDemoMode = false;
        this.mStatusIcons.setVisibility(0);
        this.mModernMobileViews.clear();
        this.mMobileViews.clear();
        setVisibility(8);
    }

    public final void setColor(int i) {
        this.mColor = i;
        for (int i2 = 0; i2 < getChildCount(); i2++) {
            StatusIconDisplayable statusIconDisplayable = (StatusIconDisplayable) getChildAt(i2);
            statusIconDisplayable.setStaticDrawableColor(this.mColor);
            statusIconDisplayable.setDecorColor(this.mColor);
        }
    }

    public final void updateSlot(int i, String str) {
        if (!this.mDemoMode) {
            return;
        }
        String packageName = ((LinearLayout) this).mContext.getPackageName();
        int i2 = 0;
        while (true) {
            if (i2 < getChildCount()) {
                View childAt = getChildAt(i2);
                if (childAt instanceof StatusBarIconView) {
                    StatusBarIconView statusBarIconView = (StatusBarIconView) childAt;
                    if (str.equals(statusBarIconView.getTag())) {
                        if (i != 0) {
                            StatusBarIcon statusBarIcon = statusBarIconView.mIcon;
                            statusBarIcon.visible = true;
                            statusBarIcon.icon = Icon.createWithResource(statusBarIcon.icon.getResPackage(), i);
                            statusBarIconView.set(statusBarIcon);
                            statusBarIconView.updateDrawable(true);
                            return;
                        }
                    }
                }
                i2++;
            } else {
                i2 = -1;
                break;
            }
        }
        if (i == 0) {
            if (i2 != -1) {
                removeViewAt(i2);
                return;
            }
            return;
        }
        StatusBarIcon statusBarIcon2 = new StatusBarIcon(packageName, UserHandle.SYSTEM, i, 0, 0, "Demo");
        statusBarIcon2.visible = true;
        StatusBarIconView statusBarIconView2 = new StatusBarIconView(getContext(), str, null, false);
        statusBarIconView2.setTag(str);
        statusBarIconView2.set(statusBarIcon2);
        statusBarIconView2.setStaticDrawableColor(this.mColor);
        statusBarIconView2.setDecorColor(this.mColor);
        addView(statusBarIconView2, 0, new LinearLayout.LayoutParams(-2, this.mIconSize));
    }
}
