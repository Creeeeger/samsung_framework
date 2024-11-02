package com.android.systemui.sensorprivacy.television;

import android.app.AppOpsManager;
import android.app.role.RoleManager;
import android.content.res.ColorStateList;
import android.content.res.Resources;
import android.hardware.SensorPrivacyManager;
import android.os.Bundle;
import android.widget.Button;
import android.widget.ImageView;
import android.widget.TextView;
import android.widget.Toast;
import com.android.systemui.R;
import com.android.systemui.statusbar.policy.IndividualSensorPrivacyController;
import com.android.systemui.statusbar.policy.IndividualSensorPrivacyControllerImpl;
import com.android.systemui.tv.TvBottomSheetActivity;

/* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
/* loaded from: classes2.dex */
public class TvUnblockSensorActivity extends TvBottomSheetActivity {
    public static final /* synthetic */ int $r8$clinit = 0;
    public final AppOpsManager mAppOpsManager;
    public Button mCancelButton;
    public TextView mContent;
    public ImageView mIcon;
    public Button mPositiveButton;
    public final RoleManager mRoleManager;
    public ImageView mSecondIcon;
    public int mSensor = -1;
    public TvUnblockSensorActivity$$ExternalSyntheticLambda1 mSensorPrivacyCallback;
    public final IndividualSensorPrivacyController mSensorPrivacyController;
    public TextView mTitle;

    public TvUnblockSensorActivity(IndividualSensorPrivacyController individualSensorPrivacyController, AppOpsManager appOpsManager, RoleManager roleManager) {
        this.mSensorPrivacyController = individualSensorPrivacyController;
        this.mAppOpsManager = appOpsManager;
        this.mRoleManager = roleManager;
    }

    /* JADX WARN: Type inference failed for: r3v7, types: [com.android.systemui.sensorprivacy.television.TvUnblockSensorActivity$$ExternalSyntheticLambda1] */
    @Override // com.android.systemui.tv.TvBottomSheetActivity, android.app.Activity
    public final void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        getWindow().addSystemFlags(524288);
        if (getIntent().getBooleanExtra(SensorPrivacyManager.EXTRA_ALL_SENSORS, false)) {
            this.mSensor = Integer.MAX_VALUE;
        } else {
            this.mSensor = getIntent().getIntExtra(SensorPrivacyManager.EXTRA_SENSOR, -1);
        }
        if (this.mSensor == -1) {
            finish();
            return;
        }
        this.mSensorPrivacyCallback = new IndividualSensorPrivacyController.Callback() { // from class: com.android.systemui.sensorprivacy.television.TvUnblockSensorActivity$$ExternalSyntheticLambda1
            @Override // com.android.systemui.statusbar.policy.IndividualSensorPrivacyController.Callback
            public final void onSensorBlockedChanged(int i, boolean z) {
                TvUnblockSensorActivity tvUnblockSensorActivity = TvUnblockSensorActivity.this;
                int i2 = tvUnblockSensorActivity.mSensor;
                int i3 = R.string.sensor_privacy_mic_camera_unblocked_toast_content;
                if (i2 == Integer.MAX_VALUE) {
                    IndividualSensorPrivacyControllerImpl individualSensorPrivacyControllerImpl = (IndividualSensorPrivacyControllerImpl) tvUnblockSensorActivity.mSensorPrivacyController;
                    if (!individualSensorPrivacyControllerImpl.isSensorBlocked(2) && !individualSensorPrivacyControllerImpl.isSensorBlocked(1)) {
                        int i4 = tvUnblockSensorActivity.mSensor;
                        if (i4 != 1) {
                            if (i4 == 2) {
                                i3 = R.string.sensor_privacy_camera_unblocked_toast_content;
                            }
                        } else {
                            i3 = R.string.sensor_privacy_mic_unblocked_toast_content;
                        }
                        Toast.makeText(tvUnblockSensorActivity, i3, 0).show();
                        tvUnblockSensorActivity.finish();
                        return;
                    }
                }
                int i5 = tvUnblockSensorActivity.mSensor;
                if (i5 == i && !z) {
                    if (i5 != 1) {
                        if (i5 == 2) {
                            i3 = R.string.sensor_privacy_camera_unblocked_toast_content;
                        }
                    } else {
                        i3 = R.string.sensor_privacy_mic_unblocked_toast_content;
                    }
                    Toast.makeText(tvUnblockSensorActivity, i3, 0).show();
                    tvUnblockSensorActivity.finish();
                    return;
                }
                tvUnblockSensorActivity.updateUI();
            }
        };
        this.mTitle = (TextView) findViewById(R.id.bottom_sheet_title);
        this.mContent = (TextView) findViewById(R.id.bottom_sheet_body);
        this.mIcon = (ImageView) findViewById(R.id.bottom_sheet_icon);
        this.mSecondIcon = (ImageView) findViewById(R.id.bottom_sheet_second_icon);
        this.mPositiveButton = (Button) findViewById(R.id.bottom_sheet_positive_button);
        Button button = (Button) findViewById(R.id.bottom_sheet_negative_button);
        this.mCancelButton = button;
        button.setText(android.R.string.cancel);
        this.mCancelButton.setOnClickListener(new TvUnblockSensorActivity$$ExternalSyntheticLambda0(this, 2));
        updateUI();
    }

    @Override // android.app.Activity
    public final void onPause() {
        ((IndividualSensorPrivacyControllerImpl) this.mSensorPrivacyController).removeCallback(this.mSensorPrivacyCallback);
        super.onPause();
    }

    @Override // android.app.Activity
    public final void onResume() {
        super.onResume();
        updateUI();
        ((IndividualSensorPrivacyControllerImpl) this.mSensorPrivacyController).addCallback(this.mSensorPrivacyCallback);
    }

    public final void setIconSize(int i, int i2) {
        Resources resources = getResources();
        int dimensionPixelSize = resources.getDimensionPixelSize(i);
        int dimensionPixelSize2 = resources.getDimensionPixelSize(i2);
        this.mIcon.getLayoutParams().width = dimensionPixelSize;
        this.mIcon.getLayoutParams().height = dimensionPixelSize2;
        this.mIcon.invalidate();
        this.mSecondIcon.getLayoutParams().width = dimensionPixelSize;
        this.mSecondIcon.getLayoutParams().height = dimensionPixelSize2;
        this.mSecondIcon.invalidate();
    }

    public final void setIconTint(boolean z) {
        Resources resources = getResources();
        if (z) {
            ColorStateList colorStateList = resources.getColorStateList(R.color.bottom_sheet_icon_color, getTheme());
            this.mIcon.setImageTintList(colorStateList);
            this.mSecondIcon.setImageTintList(colorStateList);
        } else {
            this.mIcon.setImageTintList(null);
            this.mSecondIcon.setImageTintList(null);
        }
        this.mIcon.invalidate();
        this.mSecondIcon.invalidate();
    }

    /* JADX WARN: Removed duplicated region for block: B:11:0x006a  */
    /* JADX WARN: Removed duplicated region for block: B:8:0x0039  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public final void updateUI() {
        /*
            Method dump skipped, instructions count: 448
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: com.android.systemui.sensorprivacy.television.TvUnblockSensorActivity.updateUI():void");
    }
}
