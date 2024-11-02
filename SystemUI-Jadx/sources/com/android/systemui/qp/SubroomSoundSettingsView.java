package com.android.systemui.qp;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import android.content.res.Resources;
import android.graphics.drawable.AnimationDrawable;
import android.provider.Settings;
import android.util.AttributeSet;
import android.util.Log;
import android.view.View;
import android.widget.ImageView;
import android.widget.LinearLayout;
import com.android.keyguard.KeyguardSecUpdateMonitorImpl$$ExternalSyntheticOutline0;
import com.android.systemui.Dependency;
import com.android.systemui.R;
import com.android.systemui.broadcast.BroadcastDispatcher;
import com.android.systemui.knox.KnoxStateMonitor;
import com.android.systemui.knox.KnoxStateMonitorImpl;
import com.android.systemui.statusbar.phone.SecStatusBarAudioManagerHelper;
import com.android.systemui.util.DeviceType;
import com.android.systemui.util.SystemUIAnalytics;

/* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
/* loaded from: classes2.dex */
public class SubroomSoundSettingsView extends LinearLayout {
    public static final /* synthetic */ int $r8$clinit = 0;
    public final Context mContext;
    public final AnonymousClass1 mReceiver;
    public LinearLayout mSoundBackground;
    public ImageView mSoundButton;
    public int mSoundProfile;

    /* JADX WARN: Type inference failed for: r2v1, types: [com.android.systemui.qp.SubroomSoundSettingsView$1] */
    public SubroomSoundSettingsView(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        this.mReceiver = new BroadcastReceiver() { // from class: com.android.systemui.qp.SubroomSoundSettingsView.1
            @Override // android.content.BroadcastReceiver
            public final void onReceive(Context context2, Intent intent) {
                if ("android.media.INTERNAL_RINGER_MODE_CHANGED_ACTION".equals(intent.getAction())) {
                    SubroomSoundSettingsView subroomSoundSettingsView = SubroomSoundSettingsView.this;
                    Context context3 = subroomSoundSettingsView.mContext;
                    if (SecStatusBarAudioManagerHelper.sInstance == null) {
                        SecStatusBarAudioManagerHelper.sInstance = new SecStatusBarAudioManagerHelper(context3);
                    }
                    subroomSoundSettingsView.mSoundProfile = SecStatusBarAudioManagerHelper.sInstance.getRingerMode(true);
                    SubroomSoundSettingsView subroomSoundSettingsView2 = SubroomSoundSettingsView.this;
                    subroomSoundSettingsView2.setSoundIcon(subroomSoundSettingsView2.mSoundProfile, true);
                }
            }
        };
        this.mContext = context;
        if (SecStatusBarAudioManagerHelper.sInstance == null) {
            SecStatusBarAudioManagerHelper.sInstance = new SecStatusBarAudioManagerHelper(context);
        }
        this.mSoundProfile = SecStatusBarAudioManagerHelper.sInstance.getRingerMode(true);
    }

    @Override // android.view.ViewGroup, android.view.View
    public final void onAttachedToWindow() {
        int i;
        super.onAttachedToWindow();
        Context context = this.mContext;
        if (SecStatusBarAudioManagerHelper.sInstance == null) {
            SecStatusBarAudioManagerHelper.sInstance = new SecStatusBarAudioManagerHelper(context);
        }
        boolean z = true;
        this.mSoundProfile = SecStatusBarAudioManagerHelper.sInstance.getRingerMode(true);
        IntentFilter intentFilter = new IntentFilter();
        intentFilter.addAction("android.media.INTERNAL_RINGER_MODE_CHANGED_ACTION");
        intentFilter.addAction("android.settings.ALL_SOUND_MUTE");
        ((BroadcastDispatcher) Dependency.get(BroadcastDispatcher.class)).registerReceiver(intentFilter, this.mReceiver);
        if (this.mSoundProfile == 2) {
            if (Settings.System.getInt(this.mContext.getContentResolver(), "all_sound_off", 0) != 1) {
                z = false;
            }
            if (z) {
                i = 4;
                setSoundIcon(i, false);
            }
        }
        i = this.mSoundProfile;
        setSoundIcon(i, false);
    }

    @Override // android.view.ViewGroup, android.view.View
    public final void onDetachedFromWindow() {
        super.onDetachedFromWindow();
        ((BroadcastDispatcher) Dependency.get(BroadcastDispatcher.class)).unregisterReceiver(this.mReceiver);
    }

    @Override // android.view.View
    public final void onFinishInflate() {
        super.onFinishInflate();
        this.mSoundButton = (ImageView) findViewById(R.id.sound_image_view);
        this.mSoundBackground = (LinearLayout) findViewById(R.id.sound_background);
        this.mSoundButton.setOnClickListener(new View.OnClickListener() { // from class: com.android.systemui.qp.SubroomSoundSettingsView$$ExternalSyntheticLambda0
            /* JADX WARN: Multi-variable type inference failed */
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                SubroomSoundSettingsView subroomSoundSettingsView = SubroomSoundSettingsView.this;
                int i = SubroomSoundSettingsView.$r8$clinit;
                subroomSoundSettingsView.getClass();
                if (((KnoxStateMonitorImpl) ((KnoxStateMonitor) Dependency.get(KnoxStateMonitor.class))).isSoundModeTileBlocked()) {
                    Log.d("SubroomSoundSettingsView", "Subscreen Soundmode tile not available by KnoxStateMonitor.");
                } else {
                    Context context = subroomSoundSettingsView.mContext;
                    if (SecStatusBarAudioManagerHelper.sInstance == null) {
                        SecStatusBarAudioManagerHelper.sInstance = new SecStatusBarAudioManagerHelper(context);
                    }
                    boolean z = true;
                    int ringerMode = SecStatusBarAudioManagerHelper.sInstance.getRingerMode(true);
                    int i2 = 0;
                    if (ringerMode != 1) {
                        if (ringerMode != 2) {
                            if (Settings.System.getInt(subroomSoundSettingsView.mContext.getContentResolver(), "all_sound_off", 0) != 1) {
                                z = false;
                            }
                            if (z) {
                                i2 = DeviceType.isVibratorSupported(subroomSoundSettingsView.mContext);
                            } else {
                                i2 = 2;
                            }
                        } else {
                            i2 = DeviceType.isVibratorSupported(subroomSoundSettingsView.mContext);
                        }
                    }
                    Context context2 = subroomSoundSettingsView.mContext;
                    if (SecStatusBarAudioManagerHelper.sInstance == null) {
                        SecStatusBarAudioManagerHelper.sInstance = new SecStatusBarAudioManagerHelper(context2);
                    }
                    SecStatusBarAudioManagerHelper.sInstance.setRingerModeInternal(i2);
                }
                SystemUIAnalytics.sendEventLog(SystemUIAnalytics.sCurrentScreenID, "QPBE2002");
            }
        });
        this.mSoundButton.setOnLongClickListener(new SubroomSoundSettingsView$$ExternalSyntheticLambda1());
    }

    public final void setSoundIcon(int i, boolean z) {
        int i2;
        int i3 = R.string.accessibility_desc_on;
        if (i == 0) {
            StringBuilder sb = new StringBuilder();
            sb.append(this.mContext.getString(R.string.quick_settings_sound_mode_mute_label));
            sb.append(", ");
            Context context = this.mContext;
            if (!z) {
                i3 = R.string.subscreen_sound_mode_talkback_sound_label;
            }
            this.mSoundButton.setContentDescription(KeyguardSecUpdateMonitorImpl$$ExternalSyntheticOutline0.m(context, i3, sb));
        } else if (i == 1) {
            StringBuilder sb2 = new StringBuilder();
            sb2.append(this.mContext.getString(R.string.quick_settings_sound_mode_vibrate_label));
            sb2.append(", ");
            Context context2 = this.mContext;
            if (!z) {
                i3 = R.string.subscreen_sound_mode_talkback_mute_label;
            }
            this.mSoundButton.setContentDescription(KeyguardSecUpdateMonitorImpl$$ExternalSyntheticOutline0.m(context2, i3, sb2));
        } else {
            StringBuilder sb3 = new StringBuilder();
            sb3.append(this.mContext.getString(R.string.quick_settings_sound_mode_sound_label));
            sb3.append(", ");
            Context context3 = this.mContext;
            if (!z) {
                i3 = R.string.subscreen_sound_mode_talkback_vibrate_label;
            }
            this.mSoundButton.setContentDescription(KeyguardSecUpdateMonitorImpl$$ExternalSyntheticOutline0.m(context3, i3, sb3));
        }
        int i4 = 0;
        if (z) {
            ImageView imageView = this.mSoundButton;
            Resources resources = this.mContext.getResources();
            if (i != 0) {
                if (i != 1) {
                    if (i != 2) {
                        if (i == 4) {
                            i4 = R.drawable.quick_panel_icon_mute_all_sound;
                        }
                    } else {
                        i4 = R.drawable.quick_panel_icon_sound;
                    }
                } else {
                    i4 = R.drawable.quick_panel_icon_sound_vibrate;
                }
            } else {
                i4 = R.drawable.quick_panel_icon_sound_mute;
            }
            imageView.setImageDrawable(resources.getDrawable(i4));
            ((AnimationDrawable) this.mSoundButton.getDrawable()).start();
        } else {
            ImageView imageView2 = this.mSoundButton;
            Resources resources2 = this.mContext.getResources();
            if (i != 0) {
                if (i != 1) {
                    if (i != 2) {
                        if (i == 4) {
                            i4 = R.drawable.quick_panel_icon_mute_all_sound;
                        }
                    } else {
                        i4 = R.drawable.quick_panel_icon_sound_011;
                    }
                } else {
                    i4 = R.drawable.quick_panel_icon_sound_vibrate_015;
                }
            } else {
                i4 = R.drawable.quick_panel_icon_sound_mute_008;
            }
            imageView2.setImageDrawable(resources2.getDrawable(i4));
        }
        LinearLayout linearLayout = this.mSoundBackground;
        Resources resources3 = this.mContext.getResources();
        if (i != 0 && i != 4) {
            i2 = R.drawable.subroom_active_background;
        } else {
            i2 = R.drawable.subroom_inactive_background;
        }
        linearLayout.setBackground(resources3.getDrawable(i2));
    }
}
