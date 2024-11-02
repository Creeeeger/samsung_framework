package com.android.systemui.popup.data;

import com.android.systemui.R;
import com.android.systemui.basic.util.LogWrapper;
import com.android.systemui.util.DeviceType;

/* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
/* loaded from: classes2.dex */
public final class DataConnectionErrorData {
    public final LogWrapper mLogWrapper;

    public DataConnectionErrorData(LogWrapper logWrapper) {
        this.mLogWrapper = logWrapper;
    }

    public static int getBody(int i) {
        if (i != 0) {
            if (i != 1) {
                if (i != 2) {
                    if (i != 4) {
                        return -1;
                    }
                    return R.string.data_connection_error_no_signal_body;
                }
                return R.string.data_connection_error_data_roaming_off_body;
            }
            return R.string.data_connection_error_mobile_data_off_body;
        }
        if (DeviceType.isTablet()) {
            return R.string.data_connection_error_flight_mode_on_body_tablet;
        }
        return R.string.data_connection_error_flight_mode_on_body;
    }

    public static int getPButton(int i, boolean z) {
        if (i != 0) {
            if (i != 1) {
                if (i != 2) {
                    if (i != 4) {
                        return -1;
                    }
                    if (z) {
                        return R.string.retry;
                    }
                }
                return R.string.yes;
            }
            return R.string.popupui_dialog_turn_on_button;
        }
        return R.string.status_bar_settings_settings_button;
    }
}
