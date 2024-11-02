package com.android.systemui.plugins;

import android.os.Bundle;
import android.util.Log;
import androidx.concurrent.futures.AbstractResolvableFuture$$ExternalSyntheticOutline0;
import com.sec.ims.settings.ImsProfile;
import kotlin.jvm.internal.DefaultConstructorMarker;

/* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
/* loaded from: classes2.dex */
public final class WeatherData {
    public static final Companion Companion = new Companion(null);
    public static final boolean DEBUG = true;
    public static final String DESCRIPTION_KEY = "description";
    private static final int INVALID_WEATHER_ICON_STATE = -1;
    public static final String STATE_KEY = "state";
    private static final String TAG = "WeatherData";
    public static final String TEMPERATURE_KEY = "temperature";
    public static final String USE_CELSIUS_KEY = "use_celsius";
    private final String description;
    private final WeatherStateIcon state;
    private final int temperature;
    private final boolean useCelsius;

    /* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
    /* loaded from: classes2.dex */
    public enum WeatherStateIcon {
        UNKNOWN_ICON(0),
        SUNNY(1),
        CLEAR_NIGHT(2),
        MOSTLY_SUNNY(3),
        MOSTLY_CLEAR_NIGHT(4),
        PARTLY_CLOUDY(5),
        PARTLY_CLOUDY_NIGHT(6),
        MOSTLY_CLOUDY_DAY(7),
        MOSTLY_CLOUDY_NIGHT(8),
        CLOUDY(9),
        HAZE_FOG_DUST_SMOKE(10),
        DRIZZLE(11),
        HEAVY_RAIN(12),
        SHOWERS_RAIN(13),
        SCATTERED_SHOWERS_DAY(14),
        SCATTERED_SHOWERS_NIGHT(15),
        ISOLATED_SCATTERED_TSTORMS_DAY(16),
        ISOLATED_SCATTERED_TSTORMS_NIGHT(17),
        STRONG_TSTORMS(18),
        BLIZZARD(19),
        BLOWING_SNOW(20),
        FLURRIES(21),
        HEAVY_SNOW(22),
        SCATTERED_SNOW_SHOWERS_DAY(23),
        SCATTERED_SNOW_SHOWERS_NIGHT(24),
        SNOW_SHOWERS_SNOW(25),
        MIXED_RAIN_HAIL_RAIN_SLEET(26),
        SLEET_HAIL(27),
        TORNADO(28),
        TROPICAL_STORM_HURRICANE(29),
        WINDY_BREEZY(30),
        WINTRY_MIX_RAIN_SNOW(31);

        public static final Companion Companion = new Companion(null);
        private final int id;

        /* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
        /* loaded from: classes2.dex */
        public static final class Companion {
            private Companion() {
            }

            public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
                this();
            }

            public final WeatherStateIcon fromInt(int i) {
                boolean z;
                for (WeatherStateIcon weatherStateIcon : WeatherStateIcon.values()) {
                    if (weatherStateIcon.getId() == i) {
                        z = true;
                    } else {
                        z = false;
                    }
                    if (z) {
                        return weatherStateIcon;
                    }
                }
                return null;
            }
        }

        WeatherStateIcon(int i) {
            this.id = i;
        }

        public final int getId() {
            return this.id;
        }
    }

    public WeatherData(String str, WeatherStateIcon weatherStateIcon, boolean z, int i) {
        this.description = str;
        this.state = weatherStateIcon;
        this.useCelsius = z;
        this.temperature = i;
    }

    public final String getDescription() {
        return this.description;
    }

    public final WeatherStateIcon getState() {
        return this.state;
    }

    public final int getTemperature() {
        return this.temperature;
    }

    public final boolean getUseCelsius() {
        return this.useCelsius;
    }

    public String toString() {
        String str;
        if (this.useCelsius) {
            str = ImsProfile.TIMER_NAME_C;
        } else {
            str = ImsProfile.TIMER_NAME_F;
        }
        WeatherStateIcon weatherStateIcon = this.state;
        String str2 = this.description;
        int i = this.temperature;
        StringBuilder sb = new StringBuilder();
        sb.append(weatherStateIcon);
        sb.append(" (\"");
        sb.append(str2);
        sb.append("\") ");
        sb.append(i);
        return AbstractResolvableFuture$$ExternalSyntheticOutline0.m(sb, "°", str);
    }

    /* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
    /* loaded from: classes2.dex */
    public static final class Companion {
        private Companion() {
        }

        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private final Integer readIntFromBundle(Bundle bundle, String str) {
            try {
                return Integer.valueOf(Integer.parseInt(bundle.getString(str)));
            } catch (Exception unused) {
                return null;
            }
        }

        public final WeatherData fromBundle(Bundle bundle) {
            String string = bundle.getString("description");
            WeatherStateIcon fromInt = WeatherStateIcon.Companion.fromInt(bundle.getInt("state", -1));
            Integer readIntFromBundle = readIntFromBundle(bundle, WeatherData.TEMPERATURE_KEY);
            if (string != null && fromInt != null && bundle.containsKey(WeatherData.USE_CELSIUS_KEY) && readIntFromBundle != null) {
                WeatherData weatherData = new WeatherData(string, fromInt, bundle.getBoolean(WeatherData.USE_CELSIUS_KEY), readIntFromBundle.intValue());
                Log.i(WeatherData.TAG, "Weather data parsed " + weatherData + " from " + bundle);
                return weatherData;
            }
            Log.w(WeatherData.TAG, "Weather data did not parse from " + bundle);
            return null;
        }

        public static /* synthetic */ void getDESCRIPTION_KEY$annotations() {
        }

        public static /* synthetic */ void getSTATE_KEY$annotations() {
        }

        public static /* synthetic */ void getTEMPERATURE_KEY$annotations() {
        }

        public static /* synthetic */ void getUSE_CELSIUS_KEY$annotations() {
        }
    }
}
