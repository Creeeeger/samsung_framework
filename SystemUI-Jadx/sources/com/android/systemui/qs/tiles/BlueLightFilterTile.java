package com.android.systemui.qs.tiles;

import android.content.ComponentName;
import android.content.Context;
import android.content.DialogInterface;
import android.content.Intent;
import android.content.res.ColorStateList;
import android.content.res.Resources;
import android.net.Uri;
import android.os.Debug;
import android.os.Handler;
import android.os.Looper;
import android.os.UserHandle;
import android.provider.Settings;
import android.support.v4.media.MediaBrowserCompat$MediaBrowserImplBase$$ExternalSyntheticOutline0;
import android.text.TextUtils;
import android.text.format.DateFormat;
import android.util.Log;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.CompoundButton;
import android.widget.LinearLayout;
import android.widget.RadioButton;
import android.widget.TextView;
import android.widget.Toast;
import androidx.appcompat.widget.SeslSeekBar;
import androidx.appcompat.widget.SwitchCompat;
import androidx.core.os.LocaleListCompatWrapper$$ExternalSyntheticOutline0;
import com.android.internal.logging.MetricsLogger;
import com.android.keyguard.KeyguardUpdateMonitor;
import com.android.keyguard.logging.KeyguardUpdateMonitorLogger$logAssistantVisible$2$$ExternalSyntheticOutline0;
import com.android.systemui.QpRune;
import com.android.systemui.R;
import com.android.systemui.plugins.ActivityStarter;
import com.android.systemui.plugins.FalsingManager;
import com.android.systemui.plugins.qs.DetailAdapter;
import com.android.systemui.plugins.qs.QSTile;
import com.android.systemui.plugins.statusbar.StatusBarStateController;
import com.android.systemui.qs.QSHost;
import com.android.systemui.qs.QsEventLogger;
import com.android.systemui.qs.SecQSSwitchPreference;
import com.android.systemui.qs.logging.QSLogger;
import com.android.systemui.qs.pipeline.domain.interactor.PanelInteractor;
import com.android.systemui.qs.tileimpl.QSTileImpl;
import com.android.systemui.qs.tileimpl.SQSTileImpl;
import com.android.systemui.qs.tiles.BlueLightFilterTile;
import com.android.systemui.statusbar.phone.SystemUIDialog;
import com.android.systemui.statusbar.policy.KeyguardStateController;
import com.android.systemui.statusbar.policy.KeyguardStateControllerImpl;
import com.android.systemui.util.SettingsHelper;
import com.android.systemui.util.SystemUIAnalytics;
import com.samsung.android.hardware.display.SemMdnieManager;
import com.samsung.android.knox.net.vpn.KnoxVpnPolicyConstants;
import com.sec.ims.volte2.data.VolteConstants;
import java.util.Calendar;
import java.util.Iterator;
import java.util.LinkedHashMap;

/* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
/* loaded from: classes2.dex */
public final class BlueLightFilterTile extends SQSTileImpl {
    public static final Intent EYECOMFORT_SETTINGS;
    public final AnonymousClass3 COLOR_ADJUSTMENT_FEATURE;
    public final AnonymousClass4 COLOR_LENS_FEATURE;
    public final AnonymousClass1 GRAYSCALE_FEATURE;
    public final AnonymousClass2 NEGATIVE_COLORS_FEATURE;
    public final ActivityStarter mActivityStarter;
    public final BlueLightFilterDetailAdapter mDetailAdapter;
    public boolean mDetailListening;
    public final AnonymousClass6 mDetailSettingsCallback;
    public final Uri[] mDetailSettingsValueList;
    public View mDivider;
    public final LinkedHashMap mFeatureEnabled;
    public final AnonymousClass7 mFeatureSettingsCallback;
    public final Uri[] mFeatureSettingsValueList;
    public final LinkedHashMap mFeatures;
    public final KeyguardStateController mKeyguardStateController;
    public final KeyguardUpdateMonitor mKeyguardUpdateMonitor;
    public boolean mListening;
    public SystemUIDialog mLocationOnDialog;
    public LinearLayout mNightDimContainer;
    public SwitchCompat mNightDimSwitch;
    public final PanelInteractor mPanelInteractor;
    public final AnonymousClass5 mSettingsCallback;
    public final SettingsHelper mSettingsHelper;
    public String mToasMsg;

    /* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
    /* renamed from: com.android.systemui.qs.tiles.BlueLightFilterTile$1, reason: invalid class name */
    /* loaded from: classes2.dex */
    public final class AnonymousClass1 implements Feature {
        public AnonymousClass1() {
        }

        @Override // com.android.systemui.qs.tiles.BlueLightFilterTile.Feature
        public final String getName() {
            Intent intent = BlueLightFilterTile.EYECOMFORT_SETTINGS;
            return BlueLightFilterTile.this.mContext.getString(R.string.greyscale_mode_title);
        }

        @Override // com.android.systemui.qs.tiles.BlueLightFilterTile.Feature
        public final boolean isEnabled() {
            if (BlueLightFilterTile.this.mSettingsHelper.mItemLists.get("greyscale_mode").getIntValue() == 1) {
                return true;
            }
            return false;
        }
    }

    /* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
    /* renamed from: com.android.systemui.qs.tiles.BlueLightFilterTile$2, reason: invalid class name */
    /* loaded from: classes2.dex */
    public final class AnonymousClass2 implements Feature {
        public AnonymousClass2() {
        }

        @Override // com.android.systemui.qs.tiles.BlueLightFilterTile.Feature
        public final String getName() {
            Intent intent = BlueLightFilterTile.EYECOMFORT_SETTINGS;
            return BlueLightFilterTile.this.mContext.getString(R.string.negative_color_title);
        }

        @Override // com.android.systemui.qs.tiles.BlueLightFilterTile.Feature
        public final boolean isEnabled() {
            if (BlueLightFilterTile.this.mSettingsHelper.mItemLists.get("high_contrast").getIntValue() == 1) {
                return true;
            }
            return false;
        }
    }

    /* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
    /* renamed from: com.android.systemui.qs.tiles.BlueLightFilterTile$3, reason: invalid class name */
    /* loaded from: classes2.dex */
    public final class AnonymousClass3 implements Feature {
        public AnonymousClass3() {
        }

        @Override // com.android.systemui.qs.tiles.BlueLightFilterTile.Feature
        public final String getName() {
            Intent intent = BlueLightFilterTile.EYECOMFORT_SETTINGS;
            return BlueLightFilterTile.this.mContext.getString(R.string.colour_adjustment_title);
        }

        @Override // com.android.systemui.qs.tiles.BlueLightFilterTile.Feature
        public final boolean isEnabled() {
            if (BlueLightFilterTile.this.mSettingsHelper.mItemLists.get("color_blind").getIntValue() == 1) {
                return true;
            }
            return false;
        }
    }

    /* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
    /* renamed from: com.android.systemui.qs.tiles.BlueLightFilterTile$4, reason: invalid class name */
    /* loaded from: classes2.dex */
    public final class AnonymousClass4 implements Feature {
        public AnonymousClass4() {
        }

        @Override // com.android.systemui.qs.tiles.BlueLightFilterTile.Feature
        public final String getName() {
            Intent intent = BlueLightFilterTile.EYECOMFORT_SETTINGS;
            return BlueLightFilterTile.this.mContext.getString(R.string.colour_lens_title);
        }

        @Override // com.android.systemui.qs.tiles.BlueLightFilterTile.Feature
        public final boolean isEnabled() {
            if (BlueLightFilterTile.this.mSettingsHelper.mItemLists.get("color_lens_switch").getIntValue() == 1) {
                return true;
            }
            return false;
        }
    }

    /* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
    /* loaded from: classes2.dex */
    public final class BlueLightFilterDetailAdapter implements DetailAdapter {
        public static final /* synthetic */ int $r8$clinit = 0;
        public LinearLayout mAdaptable;
        public final AnonymousClass1 mAdaptiveClickListener;
        public TextView mCustom;
        public final AnonymousClass2 mCustomClickListener;
        public TextView mDetailSummary;
        public boolean mEnableControlInSetting;
        public final AnonymousClass6 mLevelChangedListener;
        public RadioButton mRadioAdaptive;
        public LinearLayout mRadioAdaptiveContainer;
        public RadioButton mRadioCustom;
        public LinearLayout mRadioCustomContainer;
        public TextView mRadioCustomSummary;
        public SeslSeekBar mSlider;
        public TextView mSliderTitle;

        public /* synthetic */ BlueLightFilterDetailAdapter(BlueLightFilterTile blueLightFilterTile, int i) {
            this();
        }

        public static String getStringFromMillis(Context context, long j) {
            if (j >= 0 && j < 1440) {
                Calendar calendar = Calendar.getInstance();
                int i = (int) j;
                calendar.set(11, i / 60);
                calendar.set(12, i % 60);
                return DateFormat.getTimeFormat(context).format(calendar.getTime());
            }
            return DateFormat.getTimeFormat(context).format(Long.valueOf(j));
        }

        @Override // com.android.systemui.plugins.qs.DetailAdapter
        public final View createDetailView(Context context, View view, ViewGroup viewGroup) {
            int i;
            int i2;
            String string;
            String string2;
            boolean z;
            BlueLightFilterTile blueLightFilterTile = BlueLightFilterTile.this;
            Intent intent = BlueLightFilterTile.EYECOMFORT_SETTINGS;
            View inflate = LayoutInflater.from(blueLightFilterTile.mContext).inflate(R.layout.qs_detail_bluelightfilter, viewGroup, false);
            BlueLightFilterTile.this.sendIntent(31);
            TextView textView = (TextView) inflate.findViewById(R.id.bluelightfilter_summary);
            this.mDetailSummary = textView;
            boolean z2 = QpRune.QUICK_TILE_NIGHT_DIM;
            if (z2) {
                textView.setVisibility(8);
            } else {
                textView.setText(BlueLightFilterTile.this.mContext.getString(R.string.quick_settings_ecs_detail_summary));
            }
            this.mCustom = (TextView) inflate.findViewById(R.id.bluelightfilter_custom);
            this.mAdaptable = (LinearLayout) inflate.findViewById(R.id.bluelightfilter_mode);
            this.mRadioAdaptive = (RadioButton) inflate.findViewById(R.id.bluelightfilter_mode_adaptive);
            this.mRadioAdaptiveContainer = (LinearLayout) inflate.findViewById(R.id.bluelightfilter_mode_adaptive_container);
            this.mRadioCustom = (RadioButton) inflate.findViewById(R.id.bluelightfilter_mode_custom);
            this.mRadioCustomContainer = (LinearLayout) inflate.findViewById(R.id.bluelightfilter_mode_custom_container);
            this.mRadioCustomSummary = (TextView) inflate.findViewById(R.id.bluelightfilter_radio_custom_summary);
            TextView textView2 = (TextView) inflate.findViewById(R.id.bluelightfilter_op_title);
            this.mSliderTitle = textView2;
            if (z2) {
                inflate.findViewById(R.id.bluelightfilter_opacity).setVisibility(8);
                this.mSliderTitle.setVisibility(8);
            } else {
                Context context2 = BlueLightFilterTile.this.mContext;
                if (!z2) {
                    i = R.string.bluelightfilter_detail_seekbar;
                } else {
                    i = R.string.quick_settings_blf_detail_seekbar;
                }
                textView2.setText(context2.getString(i));
            }
            if (z2) {
                ViewGroup viewGroup2 = (ViewGroup) inflate;
                BlueLightFilterTile blueLightFilterTile2 = BlueLightFilterTile.this;
                LinearLayout.LayoutParams layoutParams = new LinearLayout.LayoutParams(-1, blueLightFilterTile2.mContext.getResources().getDimensionPixelSize(R.dimen.qspanel_layout_detail_divider_height));
                View view2 = new View(blueLightFilterTile2.mContext);
                blueLightFilterTile2.mDivider = view2;
                view2.setLayoutParams(layoutParams);
                blueLightFilterTile2.mDivider.setBackgroundColor(blueLightFilterTile2.mContext.getColor(R.color.qspanel_layout_detail_divider_background_color));
                viewGroup2.addView(blueLightFilterTile2.mDivider);
                SecQSSwitchPreference inflateSwitch = SecQSSwitchPreference.inflateSwitch(BlueLightFilterTile.this.mContext, viewGroup2);
                BlueLightFilterTile blueLightFilterTile3 = BlueLightFilterTile.this;
                blueLightFilterTile3.mNightDimContainer = inflateSwitch;
                String string3 = blueLightFilterTile3.mContext.getString(R.string.quick_settings_enhanced_comfort_title);
                String string4 = BlueLightFilterTile.this.mContext.getString(R.string.quick_settings_enhanced_comfort_summary);
                ((TextView) BlueLightFilterTile.this.mNightDimContainer.findViewById(R.id.title)).setText(string3);
                TextView textView3 = (TextView) BlueLightFilterTile.this.mNightDimContainer.findViewById(R.id.title_summary);
                textView3.setVisibility(0);
                textView3.setText(string4);
                BlueLightFilterTile blueLightFilterTile4 = BlueLightFilterTile.this;
                blueLightFilterTile4.mNightDimSwitch = (SwitchCompat) blueLightFilterTile4.mNightDimContainer.findViewById(R.id.title_switch);
                ((LinearLayout) BlueLightFilterTile.this.mNightDimContainer.findViewById(R.id.switchPreferenceLinearLayout)).setPadding(BlueLightFilterTile.this.mContext.getResources().getDimensionPixelSize(R.dimen.sec_qs_detail_item_category_padding_top_bottom), 0, BlueLightFilterTile.this.mContext.getResources().getDimensionPixelSize(R.dimen.sec_qs_detail_items_side_padding), 0);
                viewGroup2.addView(BlueLightFilterTile.this.mNightDimContainer);
                BlueLightFilterTile blueLightFilterTile5 = BlueLightFilterTile.this;
                if (blueLightFilterTile5.mSettingsHelper.mItemLists.get("blue_light_filter_night_dim").getIntValue() == 1) {
                    z = true;
                } else {
                    z = false;
                }
                SwitchCompat switchCompat = blueLightFilterTile5.mNightDimSwitch;
                if (switchCompat != null) {
                    switchCompat.setChecked(z);
                }
                BlueLightFilterTile.this.mNightDimContainer.setOnClickListener(new View.OnClickListener() { // from class: com.android.systemui.qs.tiles.BlueLightFilterTile.BlueLightFilterDetailAdapter.3
                    @Override // android.view.View.OnClickListener
                    public final void onClick(View view3) {
                        boolean z3 = !BlueLightFilterTile.this.mNightDimSwitch.isChecked();
                        SwitchCompat switchCompat2 = BlueLightFilterTile.this.mNightDimSwitch;
                        if (switchCompat2 != null) {
                            switchCompat2.setChecked(z3);
                        }
                        Settings.System.putIntForUser(BlueLightFilterTile.this.mSettingsHelper.mContext.getContentResolver(), "blue_light_filter_night_dim", z3 ? 1 : 0, -2);
                    }
                });
                BlueLightFilterTile.this.mNightDimSwitch.setOnClickListener(new View.OnClickListener() { // from class: com.android.systemui.qs.tiles.BlueLightFilterTile.BlueLightFilterDetailAdapter.4
                    @Override // android.view.View.OnClickListener
                    public final void onClick(View view3) {
                        Settings.System.putIntForUser(BlueLightFilterTile.this.mSettingsHelper.mContext.getContentResolver(), "blue_light_filter_night_dim", ((SwitchCompat) view3).isChecked() ? 1 : 0, -2);
                    }
                });
                BlueLightFilterTile.this.mNightDimSwitch.setOnCheckedChangeListener(new CompoundButton.OnCheckedChangeListener() { // from class: com.android.systemui.qs.tiles.BlueLightFilterTile.BlueLightFilterDetailAdapter.5
                    @Override // android.widget.CompoundButton.OnCheckedChangeListener
                    public final void onCheckedChanged(CompoundButton compoundButton, boolean z3) {
                        Settings.System.putIntForUser(BlueLightFilterTile.this.mSettingsHelper.mContext.getContentResolver(), "blue_light_filter_night_dim", z3 ? 1 : 0, -2);
                    }
                });
            }
            boolean z3 = QpRune.QUICK_TILE_BLUELIGHT_FILTER_ADAPTIVE_MODE;
            BlueLightFilterTile blueLightFilterTile6 = BlueLightFilterTile.this;
            if (z3) {
                this.mAdaptable.setVisibility(0);
                if (blueLightFilterTile6.mSettingsHelper.isAdaptiveBluelight()) {
                    this.mRadioAdaptive.setChecked(true);
                    this.mRadioCustom.setChecked(false);
                } else {
                    this.mRadioAdaptive.setChecked(false);
                    this.mRadioCustom.setChecked(true);
                }
                TextView textView4 = this.mRadioCustomSummary;
                int intValue = blueLightFilterTile6.mSettingsHelper.mItemLists.get("blue_light_filter_type").getIntValue();
                Context context3 = blueLightFilterTile6.mContext;
                if (intValue == 1) {
                    string2 = getStringFromMillis(context3, Settings.System.getLongForUser(context3.getContentResolver(), "blue_light_filter_on_time", 1140L, -2)) + " ~ " + getStringFromMillis(context3, Settings.System.getLongForUser(context3.getContentResolver(), "blue_light_filter_off_time", 420L, -2));
                } else if (intValue == 2) {
                    string2 = context3.getString(R.string.bluelightfilter_custom_auto_schedule);
                } else {
                    string2 = context3.getString(R.string.bluelightfilter_custom_always);
                }
                textView4.setText(string2);
            } else {
                this.mCustom.setVisibility(0);
                TextView textView5 = this.mCustom;
                int intValue2 = blueLightFilterTile6.mSettingsHelper.mItemLists.get("blue_light_filter_type").getIntValue();
                Context context4 = blueLightFilterTile6.mContext;
                if (intValue2 == 1) {
                    string = context4.getResources().getString(R.string.bluelightfilter_custom_summary_cycle, getStringFromMillis(context4, Settings.System.getLongForUser(context4.getContentResolver(), "blue_light_filter_on_time", 1140L, -2)), getStringFromMillis(context4, Settings.System.getLongForUser(context4.getContentResolver(), "blue_light_filter_off_time", 420L, -2)));
                } else {
                    Resources resources = context4.getResources();
                    Object[] objArr = new Object[1];
                    if (intValue2 == 2) {
                        i2 = R.string.bluelightfilter_custom_auto_schedule;
                    } else {
                        i2 = R.string.bluelightfilter_custom_always;
                    }
                    objArr[0] = context4.getString(i2);
                    string = resources.getString(R.string.bluelightfilter_custom_summary, objArr);
                }
                textView5.setText(string);
            }
            updateListener(((QSTile.BooleanState) BlueLightFilterTile.this.mState).value);
            SeslSeekBar seslSeekBar = (SeslSeekBar) inflate.findViewById(R.id.bluelightfilter_op_slider);
            if (seslSeekBar != this.mSlider) {
                int blueLightFilterMode = BlueLightFilterTile.this.mSettingsHelper.getBlueLightFilterMode("blue_light_filter_opacity");
                this.mSlider = seslSeekBar;
                seslSeekBar.setMode(5);
                SeslSeekBar seslSeekBar2 = this.mSlider;
                synchronized (seslSeekBar2) {
                    seslSeekBar2.setProgress(seslSeekBar2.mProgress + 1);
                }
                this.mSlider.setMax(10);
                this.mSlider.setSeamless();
                this.mSlider.setProgress(blueLightFilterMode);
                BlueLightFilterTile blueLightFilterTile7 = BlueLightFilterTile.this;
                updateSeekBarThumb((true ^ (blueLightFilterTile7.mSettingsHelper.isAdaptiveBluelight() & z3)) & ((QSTile.BooleanState) blueLightFilterTile7.mState).value);
                SeslSeekBar seslSeekBar3 = this.mSlider;
                seslSeekBar3.mOnSeekBarChangeListener = this.mLevelChangedListener;
                seslSeekBar3.setOnTouchListener(new BlueLightFilterTile$BlueLightFilterDetailAdapter$$ExternalSyntheticLambda0());
            }
            return inflate;
        }

        @Override // com.android.systemui.plugins.qs.DetailAdapter
        public final int getMetricsCategory() {
            return 5006;
        }

        @Override // com.android.systemui.plugins.qs.DetailAdapter
        public final Intent getSettingsIntent() {
            BlueLightFilterTile.this.getClass();
            return BlueLightFilterTile.EYECOMFORT_SETTINGS;
        }

        @Override // com.android.systemui.plugins.qs.DetailAdapter
        public final CharSequence getTitle() {
            Intent intent = BlueLightFilterTile.EYECOMFORT_SETTINGS;
            return BlueLightFilterTile.this.mContext.getString(R.string.quick_settings_eyecomfortshield_detail_title);
        }

        @Override // com.android.systemui.plugins.qs.DetailAdapter
        public final Boolean getToggleState() {
            Intent intent = BlueLightFilterTile.EYECOMFORT_SETTINGS;
            return Boolean.valueOf(((QSTile.BooleanState) BlueLightFilterTile.this.mState).value);
        }

        @Override // com.android.systemui.plugins.qs.DetailAdapter
        public final void setToggleState(final boolean z) {
            boolean z2;
            BlueLightFilterTile blueLightFilterTile = BlueLightFilterTile.this;
            if (blueLightFilterTile.mSettingsHelper.mItemLists.get("location_mode").getIntValue() != 0) {
                z2 = true;
            } else {
                z2 = false;
            }
            int i = Settings.System.getInt(blueLightFilterTile.mContext.getContentResolver(), "blue_light_filter_type", 0);
            boolean z3 = ((KeyguardStateControllerImpl) blueLightFilterTile.mKeyguardStateController).mShowing;
            SettingsHelper settingsHelper = blueLightFilterTile.mSettingsHelper;
            if (z3) {
                KeyguardUpdateMonitor keyguardUpdateMonitor = blueLightFilterTile.mKeyguardUpdateMonitor;
                if (keyguardUpdateMonitor.isSecure() && !keyguardUpdateMonitor.getUserCanSkipBouncer(KeyguardUpdateMonitor.getCurrentUser()) && settingsHelper.isLockFunctionsEnabled() && !z2 && i == 2 && !((QSTile.BooleanState) blueLightFilterTile.mState).value) {
                    blueLightFilterTile.mPanelInteractor.forceCollapsePanels();
                    blueLightFilterTile.mActivityStarter.postQSRunnableDismissingKeyguard(new Runnable() { // from class: com.android.systemui.qs.tiles.BlueLightFilterTile$BlueLightFilterDetailAdapter$$ExternalSyntheticLambda1
                        @Override // java.lang.Runnable
                        public final void run() {
                            BlueLightFilterTile.BlueLightFilterDetailAdapter.this.setToggleState(z);
                        }
                    });
                    return;
                }
            }
            blueLightFilterTile.fireToggleStateChanged(z);
            if (!z2 && ((!QpRune.QUICK_TILE_BLUELIGHT_FILTER_ADAPTIVE_MODE || !settingsHelper.isAdaptiveBluelight()) && i == 2)) {
                if (!z) {
                    blueLightFilterTile.setMode(z);
                } else {
                    blueLightFilterTile.showLocationOnDialog(0);
                }
            } else {
                blueLightFilterTile.setMode(z);
            }
            if (!QpRune.QUICK_TILE_NIGHT_DIM) {
                updateSeekBarThumb((!(QpRune.QUICK_TILE_BLUELIGHT_FILTER_ADAPTIVE_MODE & settingsHelper.isAdaptiveBluelight())) & z);
            }
            updateListener(z);
        }

        public final void updateListener(boolean z) {
            AnonymousClass2 anonymousClass2;
            float f;
            float f2;
            float f3;
            LinearLayout linearLayout = this.mRadioCustomContainer;
            AnonymousClass1 anonymousClass1 = null;
            if (z) {
                anonymousClass2 = this.mCustomClickListener;
            } else {
                anonymousClass2 = null;
            }
            linearLayout.setOnClickListener(anonymousClass2);
            this.mRadioCustomContainer.setClickable(z);
            LinearLayout linearLayout2 = this.mRadioAdaptiveContainer;
            if (z) {
                anonymousClass1 = this.mAdaptiveClickListener;
            }
            linearLayout2.setOnClickListener(anonymousClass1);
            this.mRadioAdaptiveContainer.setClickable(z);
            TextView textView = this.mDetailSummary;
            float f4 = 1.0f;
            if (z) {
                f = 1.0f;
            } else {
                f = 0.4f;
            }
            textView.setAlpha(f);
            TextView textView2 = this.mCustom;
            if (z) {
                f2 = 1.0f;
            } else {
                f2 = 0.4f;
            }
            textView2.setAlpha(f2);
            LinearLayout linearLayout3 = this.mAdaptable;
            if (z) {
                f3 = 1.0f;
            } else {
                f3 = 0.4f;
            }
            linearLayout3.setAlpha(f3);
            if (QpRune.QUICK_TILE_NIGHT_DIM) {
                BlueLightFilterTile blueLightFilterTile = BlueLightFilterTile.this;
                blueLightFilterTile.mNightDimContainer.setClickable(z);
                blueLightFilterTile.mNightDimSwitch.setClickable(z);
                LinearLayout linearLayout4 = blueLightFilterTile.mNightDimContainer;
                if (!z) {
                    f4 = 0.4f;
                }
                linearLayout4.setAlpha(f4);
            }
        }

        public final void updateSeekBarThumb(boolean z) {
            float f;
            ColorStateList colorStateList;
            SeslSeekBar seslSeekBar = this.mSlider;
            if (seslSeekBar != null) {
                seslSeekBar.setEnabled(z);
                TextView textView = this.mSliderTitle;
                if (z) {
                    f = 1.0f;
                } else {
                    f = 0.4f;
                }
                textView.setAlpha(f);
                SeslSeekBar seslSeekBar2 = this.mSlider;
                BlueLightFilterTile blueLightFilterTile = BlueLightFilterTile.this;
                if (z) {
                    Intent intent = BlueLightFilterTile.EYECOMFORT_SETTINGS;
                    colorStateList = new ColorStateList(new int[][]{new int[0]}, new int[]{blueLightFilterTile.mContext.getResources().getColor(R.color.qs_interval_seekbar_activated)});
                } else {
                    Intent intent2 = BlueLightFilterTile.EYECOMFORT_SETTINGS;
                    colorStateList = new ColorStateList(new int[][]{new int[0]}, new int[]{blueLightFilterTile.mContext.getResources().getColor(R.color.tw_progress_color_control_deactivated_thumb)});
                }
                seslSeekBar2.setThumbTintList(colorStateList);
            }
        }

        /* JADX WARN: Type inference failed for: r1v2, types: [com.android.systemui.qs.tiles.BlueLightFilterTile$BlueLightFilterDetailAdapter$1] */
        /* JADX WARN: Type inference failed for: r1v3, types: [com.android.systemui.qs.tiles.BlueLightFilterTile$BlueLightFilterDetailAdapter$2] */
        /* JADX WARN: Type inference failed for: r1v4, types: [com.android.systemui.qs.tiles.BlueLightFilterTile$BlueLightFilterDetailAdapter$6] */
        private BlueLightFilterDetailAdapter() {
            this.mEnableControlInSetting = false;
            this.mAdaptiveClickListener = new View.OnClickListener() { // from class: com.android.systemui.qs.tiles.BlueLightFilterTile.BlueLightFilterDetailAdapter.1
                @Override // android.view.View.OnClickListener
                public final void onClick(View view) {
                    BlueLightFilterDetailAdapter.this.mRadioAdaptive.setChecked(true);
                    BlueLightFilterDetailAdapter.this.mRadioCustom.setChecked(false);
                    BlueLightFilterTile.this.mSettingsHelper.setScheduledBluelight(0);
                    BlueLightFilterTile.this.mSettingsHelper.setAdaptiveBluelight(1);
                    if (!QpRune.QUICK_TILE_NIGHT_DIM) {
                        BlueLightFilterDetailAdapter.this.updateSeekBarThumb(false);
                    }
                }
            };
            this.mCustomClickListener = new View.OnClickListener() { // from class: com.android.systemui.qs.tiles.BlueLightFilterTile.BlueLightFilterDetailAdapter.2
                @Override // android.view.View.OnClickListener
                public final void onClick(View view) {
                    boolean z;
                    if (BlueLightFilterTile.this.mSettingsHelper.mItemLists.get("location_mode").getIntValue() != 0) {
                        z = true;
                    } else {
                        z = false;
                    }
                    int i = Settings.System.getInt(BlueLightFilterTile.this.mContext.getContentResolver(), "blue_light_filter_type", 0);
                    if (!z && i == 2) {
                        BlueLightFilterTile.this.showLocationOnDialog(1);
                        return;
                    }
                    BlueLightFilterDetailAdapter.this.mRadioAdaptive.setChecked(false);
                    BlueLightFilterDetailAdapter.this.mRadioCustom.setChecked(true);
                    BlueLightFilterTile.this.mSettingsHelper.setScheduledBluelight(1);
                    BlueLightFilterTile.this.mSettingsHelper.setAdaptiveBluelight(0);
                    if (!QpRune.QUICK_TILE_NIGHT_DIM) {
                        BlueLightFilterDetailAdapter.this.updateSeekBarThumb(true);
                    }
                }
            };
            this.mLevelChangedListener = new SeslSeekBar.OnSeekBarChangeListener() { // from class: com.android.systemui.qs.tiles.BlueLightFilterTile.BlueLightFilterDetailAdapter.6
                @Override // androidx.appcompat.widget.SeslSeekBar.OnSeekBarChangeListener
                public final void onProgressChanged(SeslSeekBar seslSeekBar, int i, boolean z) {
                    BlueLightFilterDetailAdapter blueLightFilterDetailAdapter = BlueLightFilterDetailAdapter.this;
                    boolean z2 = blueLightFilterDetailAdapter.mEnableControlInSetting;
                    BlueLightFilterTile blueLightFilterTile = BlueLightFilterTile.this;
                    if (z2) {
                        Intent intent = BlueLightFilterTile.EYECOMFORT_SETTINGS;
                        ((SemMdnieManager) blueLightFilterTile.mContext.getSystemService("mDNIe")).setNightMode(true, i);
                    } else {
                        blueLightFilterTile.mSettingsHelper.setBlueLightFilterMode(i, "blue_light_filter_opacity");
                    }
                }

                @Override // androidx.appcompat.widget.SeslSeekBar.OnSeekBarChangeListener
                public final void onStartTrackingTouch(SeslSeekBar seslSeekBar) {
                    boolean z;
                    boolean z2;
                    boolean z3;
                    boolean z4;
                    int i;
                    int i2;
                    boolean z5;
                    int i3 = BlueLightFilterDetailAdapter.$r8$clinit;
                    BlueLightFilterDetailAdapter blueLightFilterDetailAdapter = BlueLightFilterDetailAdapter.this;
                    blueLightFilterDetailAdapter.getClass();
                    Intent intent = BlueLightFilterTile.EYECOMFORT_SETTINGS;
                    BlueLightFilterTile blueLightFilterTile = BlueLightFilterTile.this;
                    boolean z6 = false;
                    if (Settings.System.getInt(blueLightFilterTile.mContext.getContentResolver(), "blue_light_filter", 0) != 0) {
                        z = true;
                    } else {
                        z = false;
                    }
                    Context context = blueLightFilterTile.mContext;
                    if (Settings.System.getInt(context.getContentResolver(), "blue_light_filter_adaptive_mode", 0) != 0) {
                        z2 = true;
                    } else {
                        z2 = false;
                    }
                    if (Settings.System.getInt(context.getContentResolver(), "blue_light_filter_scheduled", 0) != 0) {
                        z3 = true;
                    } else {
                        z3 = false;
                    }
                    int i4 = Settings.System.getInt(context.getContentResolver(), "blue_light_filter_type", 0);
                    if (z3 && i4 == 0) {
                        z4 = true;
                    } else {
                        z4 = false;
                    }
                    if (z && !z2 && z3 && !z4) {
                        Calendar calendar = Calendar.getInstance();
                        int i5 = calendar.get(12) + (calendar.get(11) * 60);
                        if (i4 == 1) {
                            i = (int) Settings.System.getLongForUser(context.getContentResolver(), "blue_light_filter_on_time", 1140L, -2);
                            i2 = (int) Settings.System.getLongForUser(context.getContentResolver(), "blue_light_filter_off_time", 420L, -2);
                        } else {
                            i = Settings.System.getInt(context.getContentResolver(), "blue_light_filter_automatic_on_time", 1140);
                            i2 = Settings.System.getInt(context.getContentResolver(), "blue_light_filter_automatic_off_time", VolteConstants.ErrorCode.BAD_EXTENSION);
                        }
                        if (i >= i2 ? !(i5 < 0 || (i5 >= i2 && i5 < i)) : !(i > i5 || i5 >= i2)) {
                            z5 = true;
                        } else {
                            z5 = false;
                        }
                        if (!z5) {
                            z6 = true;
                        }
                    }
                    if (z6) {
                        blueLightFilterDetailAdapter.mEnableControlInSetting = true;
                    }
                }

                @Override // androidx.appcompat.widget.SeslSeekBar.OnSeekBarChangeListener
                public final void onStopTrackingTouch(SeslSeekBar seslSeekBar) {
                    int progress = seslSeekBar.getProgress();
                    BlueLightFilterDetailAdapter blueLightFilterDetailAdapter = BlueLightFilterDetailAdapter.this;
                    BlueLightFilterTile.this.mSettingsHelper.setBlueLightFilterMode(progress, "blue_light_filter_opacity");
                    if (blueLightFilterDetailAdapter.mEnableControlInSetting) {
                        Intent intent = BlueLightFilterTile.EYECOMFORT_SETTINGS;
                        BlueLightFilterTile blueLightFilterTile = BlueLightFilterTile.this;
                        ((SemMdnieManager) blueLightFilterTile.mContext.getSystemService("mDNIe")).setNightMode(false, 0);
                        blueLightFilterDetailAdapter.mEnableControlInSetting = false;
                        Log.d(blueLightFilterTile.TAG, "onStopTrackingTouch disable!");
                    }
                }
            };
        }
    }

    /* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
    /* loaded from: classes2.dex */
    public interface Feature {
        String getName();

        boolean isEnabled();
    }

    static {
        new Intent().setComponent(new ComponentName(KnoxVpnPolicyConstants.ANDROID_SETTINGS_PKG, "com.android.settings.Settings$BlueLightFilterSettingsActivity")).setAction("android.intent.action.MAIN");
        EYECOMFORT_SETTINGS = new Intent().setComponent(new ComponentName(KnoxVpnPolicyConstants.ANDROID_SETTINGS_PKG, "com.android.settings.Settings$EyeComfortSettingsActivity")).setAction("android.intent.action.MAIN");
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r1v12, types: [com.android.systemui.util.SettingsHelper$OnChangedCallback, com.android.systemui.qs.tiles.BlueLightFilterTile$5] */
    /* JADX WARN: Type inference failed for: r2v5, types: [com.android.systemui.qs.tiles.BlueLightFilterTile$6] */
    /* JADX WARN: Type inference failed for: r2v6, types: [com.android.systemui.qs.tiles.BlueLightFilterTile$7] */
    public BlueLightFilterTile(QSHost qSHost, QsEventLogger qsEventLogger, Looper looper, Handler handler, Resources resources, FalsingManager falsingManager, MetricsLogger metricsLogger, StatusBarStateController statusBarStateController, ActivityStarter activityStarter, QSLogger qSLogger, KeyguardUpdateMonitor keyguardUpdateMonitor, KeyguardStateController keyguardStateController, SettingsHelper settingsHelper, PanelInteractor panelInteractor) {
        super(qSHost, qsEventLogger, looper, handler, falsingManager, metricsLogger, statusBarStateController, activityStarter, qSLogger);
        this.mLocationOnDialog = null;
        this.mFeatureEnabled = new LinkedHashMap();
        this.mFeatures = new LinkedHashMap();
        this.mFeatureSettingsValueList = new Uri[]{Settings.System.getUriFor("greyscale_mode"), Settings.System.getUriFor("high_contrast"), Settings.System.getUriFor("color_blind"), Settings.Secure.getUriFor("color_lens_switch")};
        Uri[] uriArr = {Settings.System.getUriFor("blue_light_filter"), Settings.System.getUriFor("blue_light_filter_adaptive_mode"), Settings.System.getUriFor("blue_light_filter_night_dim")};
        this.mDetailSettingsValueList = new Uri[]{Settings.System.getUriFor("blue_light_filter_opacity")};
        this.GRAYSCALE_FEATURE = new AnonymousClass1();
        this.NEGATIVE_COLORS_FEATURE = new AnonymousClass2();
        this.COLOR_ADJUSTMENT_FEATURE = new AnonymousClass3();
        this.COLOR_LENS_FEATURE = new AnonymousClass4();
        ?? r1 = new SettingsHelper.OnChangedCallback() { // from class: com.android.systemui.qs.tiles.BlueLightFilterTile.5
            @Override // com.android.systemui.util.SettingsHelper.OnChangedCallback
            public final void onChanged(Uri uri) {
                boolean equals = uri.equals(Settings.System.getUriFor("blue_light_filter"));
                boolean z = false;
                BlueLightFilterTile blueLightFilterTile = BlueLightFilterTile.this;
                if (equals) {
                    int blueLightFilterMode = blueLightFilterTile.mSettingsHelper.getBlueLightFilterMode("blue_light_filter");
                    Log.d(blueLightFilterTile.TAG, LocaleListCompatWrapper$$ExternalSyntheticOutline0.m("handleValueChanged( value:", blueLightFilterMode, " )"));
                    if (blueLightFilterMode == 1) {
                        z = true;
                    }
                    blueLightFilterTile.refreshState(Boolean.valueOf(z));
                    return;
                }
                if (uri.equals(Settings.System.getUriFor("blue_light_filter_adaptive_mode"))) {
                    blueLightFilterTile.refreshState(null);
                    return;
                }
                if (QpRune.QUICK_TILE_NIGHT_DIM && uri.equals(Settings.System.getUriFor("blue_light_filter_night_dim"))) {
                    if (blueLightFilterTile.mSettingsHelper.mItemLists.get("blue_light_filter_night_dim").getIntValue() == 1) {
                        z = true;
                    }
                    SwitchCompat switchCompat = blueLightFilterTile.mNightDimSwitch;
                    if (switchCompat != null) {
                        switchCompat.setChecked(z);
                    }
                }
            }
        };
        this.mSettingsCallback = r1;
        this.mDetailSettingsCallback = new SettingsHelper.OnChangedCallback() { // from class: com.android.systemui.qs.tiles.BlueLightFilterTile.6
            @Override // com.android.systemui.util.SettingsHelper.OnChangedCallback
            public final void onChanged(Uri uri) {
                BlueLightFilterDetailAdapter blueLightFilterDetailAdapter;
                if (uri.equals(Settings.System.getUriFor("blue_light_filter_opacity"))) {
                    BlueLightFilterTile blueLightFilterTile = BlueLightFilterTile.this;
                    int blueLightFilterMode = blueLightFilterTile.mSettingsHelper.getBlueLightFilterMode("blue_light_filter_opacity");
                    if (!QpRune.QUICK_TILE_NIGHT_DIM && (blueLightFilterDetailAdapter = blueLightFilterTile.mDetailAdapter) != null && blueLightFilterTile.mDetailListening) {
                        Intent intent = BlueLightFilterTile.EYECOMFORT_SETTINGS;
                        if (QSTileImpl.DEBUG) {
                            String str = BlueLightFilterTile.this.TAG;
                            StringBuilder m = MediaBrowserCompat$MediaBrowserImplBase$$ExternalSyntheticOutline0.m("updateOpacity( progress:", blueLightFilterMode, " ) caller:");
                            m.append(Debug.getCaller());
                            Log.d(str, m.toString());
                        }
                        blueLightFilterDetailAdapter.mSlider.setProgress(blueLightFilterMode);
                        SystemUIAnalytics.sendEventLog(blueLightFilterMode, SystemUIAnalytics.sCurrentScreenID, "4224");
                    }
                }
            }
        };
        this.mFeatureSettingsCallback = new SettingsHelper.OnChangedCallback() { // from class: com.android.systemui.qs.tiles.BlueLightFilterTile.7
            @Override // com.android.systemui.util.SettingsHelper.OnChangedCallback
            public final void onChanged(Uri uri) {
                Intent intent = BlueLightFilterTile.EYECOMFORT_SETTINGS;
                boolean z = QSTileImpl.DEBUG;
                BlueLightFilterTile blueLightFilterTile = BlueLightFilterTile.this;
                if (z) {
                    Log.d(blueLightFilterTile.TAG, "Feature onChange( Uri:" + uri.toString() + ")");
                }
                blueLightFilterTile.mFeatureEnabled.put(uri.toString(), Boolean.valueOf(((Feature) blueLightFilterTile.mFeatures.get(uri.toString())).isEnabled()));
                blueLightFilterTile.refreshState(null);
            }
        };
        this.mDetailAdapter = new BlueLightFilterDetailAdapter(this, 0);
        this.mActivityStarter = activityStarter;
        this.mSettingsHelper = settingsHelper;
        this.mKeyguardUpdateMonitor = keyguardUpdateMonitor;
        this.mKeyguardStateController = keyguardStateController;
        settingsHelper.registerCallback(r1, uriArr);
        addFeature();
        this.mPanelInteractor = panelInteractor;
    }

    public final void addFeature() {
        LinkedHashMap linkedHashMap = this.mFeatureEnabled;
        linkedHashMap.clear();
        LinkedHashMap linkedHashMap2 = this.mFeatures;
        linkedHashMap2.clear();
        this.mSettingsHelper.registerCallback(this.mFeatureSettingsCallback, this.mFeatureSettingsValueList);
        Uri uriFor = Settings.System.getUriFor("greyscale_mode");
        String uri = uriFor.toString();
        AnonymousClass1 anonymousClass1 = this.GRAYSCALE_FEATURE;
        linkedHashMap.put(uri, Boolean.valueOf(anonymousClass1.isEnabled()));
        linkedHashMap2.put(uriFor.toString(), anonymousClass1);
        Uri uriFor2 = Settings.System.getUriFor("high_contrast");
        String uri2 = uriFor2.toString();
        AnonymousClass2 anonymousClass2 = this.NEGATIVE_COLORS_FEATURE;
        linkedHashMap.put(uri2, Boolean.valueOf(anonymousClass2.isEnabled()));
        linkedHashMap2.put(uriFor2.toString(), anonymousClass2);
        Uri uriFor3 = Settings.System.getUriFor("color_blind");
        String uri3 = uriFor3.toString();
        AnonymousClass3 anonymousClass3 = this.COLOR_ADJUSTMENT_FEATURE;
        linkedHashMap.put(uri3, Boolean.valueOf(anonymousClass3.isEnabled()));
        linkedHashMap2.put(uriFor3.toString(), anonymousClass3);
        Uri uriFor4 = Settings.Secure.getUriFor("color_lens_switch");
        String uri4 = uriFor4.toString();
        AnonymousClass4 anonymousClass4 = this.COLOR_LENS_FEATURE;
        linkedHashMap.put(uri4, Boolean.valueOf(anonymousClass4.isEnabled()));
        linkedHashMap2.put(uriFor4.toString(), anonymousClass4);
    }

    @Override // com.android.systemui.qs.tileimpl.QSTileImpl, com.android.systemui.plugins.qs.QSTile
    public final void destroy() {
        super.destroy();
        SettingsHelper settingsHelper = this.mSettingsHelper;
        settingsHelper.unregisterCallback(this.mSettingsCallback);
        settingsHelper.unregisterCallback(this.mFeatureSettingsCallback);
    }

    @Override // com.android.systemui.qs.tileimpl.SQSTileImpl, com.android.systemui.qs.tileimpl.QSTileImpl, com.android.systemui.plugins.qs.QSTile
    public final DetailAdapter getDetailAdapter() {
        return this.mDetailAdapter;
    }

    @Override // com.android.systemui.qs.tileimpl.QSTileImpl
    public final Intent getLongClickIntent() {
        return EYECOMFORT_SETTINGS;
    }

    @Override // com.android.systemui.qs.tileimpl.QSTileImpl, com.android.systemui.plugins.qs.QSTile
    public final int getMetricsCategory() {
        return 5005;
    }

    @Override // com.android.systemui.qs.tileimpl.QSTileImpl, com.android.systemui.plugins.qs.QSTile
    public final CharSequence getTileLabel() {
        return this.mContext.getString(R.string.quick_settings_eyecomfortshield_detail_title);
    }

    @Override // com.android.systemui.qs.tileimpl.QSTileImpl
    public final void handleClick(final View view) {
        boolean z;
        Context context = this.mContext;
        if (Settings.Secure.getIntForUser(context.getContentResolver(), "location_mode", 0, -2) != 0) {
            z = true;
        } else {
            z = false;
        }
        int intForUser = Settings.System.getIntForUser(context.getContentResolver(), "blue_light_filter_type", 0, -2);
        boolean z2 = ((KeyguardStateControllerImpl) this.mKeyguardStateController).mShowing;
        SettingsHelper settingsHelper = this.mSettingsHelper;
        if (z2) {
            KeyguardUpdateMonitor keyguardUpdateMonitor = this.mKeyguardUpdateMonitor;
            if (keyguardUpdateMonitor.isSecure() && !keyguardUpdateMonitor.getUserCanSkipBouncer(KeyguardUpdateMonitor.getCurrentUser()) && settingsHelper.isLockFunctionsEnabled() && !z && intForUser == 2 && !((QSTile.BooleanState) this.mState).value) {
                this.mActivityStarter.postQSRunnableDismissingKeyguard(new Runnable() { // from class: com.android.systemui.qs.tiles.BlueLightFilterTile$$ExternalSyntheticLambda0
                    @Override // java.lang.Runnable
                    public final void run() {
                        BlueLightFilterTile.this.handleClick(view);
                    }
                });
                return;
            }
        }
        QSTile.State state = this.mState;
        boolean z3 = true ^ ((QSTile.BooleanState) state).value;
        if (((QSTile.BooleanState) state).state != 0) {
            MetricsLogger.action(context, 5005, !z3);
            Log.d(this.TAG, "handleClick " + z3);
            if (!z && ((!QpRune.QUICK_TILE_BLUELIGHT_FILTER_ADAPTIVE_MODE || !settingsHelper.isAdaptiveBluelight()) && intForUser == 2)) {
                if (!z3) {
                    setMode(z3);
                    return;
                } else {
                    showLocationOnDialog(0);
                    return;
                }
            }
            setMode(z3);
            return;
        }
        if (!TextUtils.isEmpty(this.mToasMsg)) {
            Toast.makeText(context, this.mToasMsg, 0).show();
        }
    }

    @Override // com.android.systemui.qs.tileimpl.SQSTileImpl, com.android.systemui.qs.tileimpl.QSTileImpl
    public final void handleLongClick(View view) {
        if (((QSTile.BooleanState) this.mState).state == 0) {
            if (!TextUtils.isEmpty(this.mToasMsg)) {
                Toast.makeText(this.mContext, this.mToasMsg, 0).show();
                return;
            }
            return;
        }
        super.handleLongClick(view);
    }

    @Override // com.android.systemui.qs.tileimpl.SQSTileImpl, com.android.systemui.qs.tileimpl.QSTileImpl
    public final void handleSecondaryClick(View view) {
        if (((QSTile.BooleanState) this.mState).state == 0) {
            if (!TextUtils.isEmpty(this.mToasMsg)) {
                Toast.makeText(this.mContext, this.mToasMsg, 0).show();
                return;
            }
            return;
        }
        showDetail(true);
    }

    @Override // com.android.systemui.qs.tileimpl.SQSTileImpl, com.android.systemui.qs.tileimpl.QSTileImpl
    public final void handleSetListening(boolean z) {
        if (this.mListening == z) {
            return;
        }
        this.mListening = z;
    }

    @Override // com.android.systemui.qs.tileimpl.QSTileImpl
    public final void handleUpdateState(QSTile.State state, Object obj) {
        boolean z;
        Context context;
        boolean z2;
        int i;
        QSTile.BooleanState booleanState = (QSTile.BooleanState) state;
        boolean z3 = obj instanceof Boolean;
        SettingsHelper settingsHelper = this.mSettingsHelper;
        if (z3) {
            z = ((Boolean) obj).booleanValue();
        } else if (settingsHelper.getBlueLightFilterMode("blue_light_filter") == 1) {
            z = true;
        } else {
            z = false;
        }
        booleanState.value = z;
        LinkedHashMap linkedHashMap = this.mFeatureEnabled;
        Iterator it = linkedHashMap.keySet().iterator();
        while (true) {
            boolean hasNext = it.hasNext();
            context = this.mContext;
            if (hasNext) {
                String str = (String) it.next();
                if (((Boolean) linkedHashMap.get(str)).booleanValue()) {
                    this.mToasMsg = context.getString(R.string.blue_light_disable_reason, ((Feature) this.mFeatures.get(str)).getName(), context.getString(R.string.quick_settings_eyecomfortshield_detail_title));
                    z2 = true;
                    break;
                }
            } else {
                this.mToasMsg = "";
                z2 = false;
                break;
            }
        }
        if (z2) {
            booleanState.state = 0;
        } else {
            if (z) {
                i = 2;
            } else {
                i = 1;
            }
            booleanState.state = i;
        }
        booleanState.dualTarget = true;
        booleanState.label = context.getString(R.string.quick_settings_eyecomfortshield_detail_title);
        if (QpRune.QUICK_TILE_BLUELIGHT_FILTER_ADAPTIVE_MODE && settingsHelper.isAdaptiveBluelight()) {
            booleanState.icon = QSTileImpl.ResourceIcon.get(R.drawable.quick_panel_icon_eye_comfort_shield_adaptive);
        } else {
            booleanState.icon = QSTileImpl.ResourceIcon.get(R.drawable.quick_panel_icon_eye_comfort_shield);
        }
    }

    @Override // com.android.systemui.qs.tileimpl.QSTileImpl
    public final void handleUserSwitch(int i) {
        this.mSettingsHelper.unregisterCallback(this.mFeatureSettingsCallback);
        addFeature();
        sendIntent(41);
        refreshState(null);
        handleRefreshState(null);
    }

    @Override // com.android.systemui.qs.tileimpl.QSTileImpl
    public final QSTile.State newTileState() {
        return new QSTile.BooleanState();
    }

    public final void sendIntent(int i) {
        if (QSTileImpl.DEBUG) {
            Log.d(this.TAG, LocaleListCompatWrapper$$ExternalSyntheticOutline0.m("sendIntent( key:", i, " ) BLUE_LIGHT_SETTING"));
        }
        Intent intent = new Intent();
        intent.setComponent(new ComponentName("com.samsung.android.bluelightfilter", "com.samsung.android.bluelightfilter.BlueLightFilterService"));
        intent.putExtra("BLUE_LIGHT_FILTER_SERVICE_TYPE", i);
        intent.setPackage("com.samsung.android.bluelightfilter.BlueLightFilterService");
        this.mContext.startServiceAsUser(intent, UserHandle.CURRENT);
    }

    @Override // com.android.systemui.qs.tileimpl.QSTileImpl, com.android.systemui.plugins.qs.QSTile
    public final void setDetailListening(boolean z) {
        if (this.mDetailListening == z) {
            return;
        }
        this.mDetailListening = z;
        if (QSTileImpl.DEBUG) {
            Log.d(this.TAG, "setDetailListening( listening:" + z + " )");
        }
        AnonymousClass6 anonymousClass6 = this.mDetailSettingsCallback;
        SettingsHelper settingsHelper = this.mSettingsHelper;
        if (z) {
            settingsHelper.registerCallback(anonymousClass6, this.mDetailSettingsValueList);
        } else {
            settingsHelper.unregisterCallback(anonymousClass6);
        }
    }

    public final void setMode(boolean z) {
        int i;
        Log.d(this.TAG, KeyguardUpdateMonitorLogger$logAssistantVisible$2$$ExternalSyntheticOutline0.m("setMode : ", z));
        this.mSettingsHelper.setBlueLightFilterMode(z ? 1 : 0, "blue_light_filter");
        if (z) {
            i = 21;
        } else {
            i = 22;
        }
        sendIntent(i);
    }

    public final void showLocationOnDialog(final int i) {
        Context context = this.mContext;
        Resources resources = context.getResources();
        SystemUIDialog systemUIDialog = new SystemUIDialog(context, 2132018528);
        this.mLocationOnDialog = systemUIDialog;
        systemUIDialog.setCancelable(true);
        this.mLocationOnDialog.setTitle(resources.getString(R.string.sec_blue_light_filter_dlg_turn_on_location_title));
        this.mLocationOnDialog.setMessage(resources.getString(R.string.sec_blue_light_filter_dlg_turn_on_location));
        this.mLocationOnDialog.setNegativeButton(R.string.dlg_cancel, new DialogInterface.OnClickListener() { // from class: com.android.systemui.qs.tiles.BlueLightFilterTile.8
            @Override // android.content.DialogInterface.OnClickListener
            public final void onClick(DialogInterface dialogInterface, int i2) {
                int i3 = i;
                if (i3 == 0) {
                    BlueLightFilterTile blueLightFilterTile = BlueLightFilterTile.this;
                    Intent intent = BlueLightFilterTile.EYECOMFORT_SETTINGS;
                    blueLightFilterTile.setMode(false);
                } else if (i3 == 1) {
                    BlueLightFilterTile.this.mSettingsHelper.setScheduledBluelight(0);
                    BlueLightFilterTile.this.mSettingsHelper.setAdaptiveBluelight(1);
                }
            }
        });
        this.mLocationOnDialog.setPositiveButton(R.string.sec_dlg_turn_on, new DialogInterface.OnClickListener() { // from class: com.android.systemui.qs.tiles.BlueLightFilterTile.9
            @Override // android.content.DialogInterface.OnClickListener
            public final void onClick(DialogInterface dialogInterface, int i2) {
                Settings.Secure.putInt(BlueLightFilterTile.this.mSettingsHelper.mContext.getContentResolver(), "location_mode", 3);
                int i3 = i;
                if (i3 == 0) {
                    BlueLightFilterTile.this.setMode(true);
                } else if (i3 == 1) {
                    BlueLightFilterTile.this.mSettingsHelper.setScheduledBluelight(1);
                    BlueLightFilterTile.this.mSettingsHelper.setAdaptiveBluelight(0);
                }
            }
        });
        this.mLocationOnDialog.setOnCancelListener(new DialogInterface.OnCancelListener() { // from class: com.android.systemui.qs.tiles.BlueLightFilterTile.10
            @Override // android.content.DialogInterface.OnCancelListener
            public final void onCancel(DialogInterface dialogInterface) {
                int i2 = i;
                if (i2 == 0) {
                    BlueLightFilterTile blueLightFilterTile = BlueLightFilterTile.this;
                    Intent intent = BlueLightFilterTile.EYECOMFORT_SETTINGS;
                    blueLightFilterTile.setMode(false);
                } else if (i2 == 1) {
                    BlueLightFilterTile.this.mSettingsHelper.setScheduledBluelight(0);
                    BlueLightFilterTile.this.mSettingsHelper.setAdaptiveBluelight(1);
                }
            }
        });
        this.mLocationOnDialog.setOnDismissListener(new DialogInterface.OnDismissListener() { // from class: com.android.systemui.qs.tiles.BlueLightFilterTile.11
            @Override // android.content.DialogInterface.OnDismissListener
            public final void onDismiss(DialogInterface dialogInterface) {
                BlueLightFilterTile.this.mLocationOnDialog = null;
            }
        });
        this.mLocationOnDialog.getWindow().setType(VolteConstants.ErrorCode.MAKECALL_REG_FAILURE_REG_403);
        this.mLocationOnDialog.getWindow().getAttributes().privateFlags |= 16;
        this.mPanelInteractor.collapsePanels();
        this.mLocationOnDialog.show();
    }
}
