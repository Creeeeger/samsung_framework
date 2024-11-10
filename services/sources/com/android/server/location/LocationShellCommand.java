package com.android.server.location;

import android.content.Context;
import android.location.provider.ProviderProperties;
import android.os.UserHandle;
import com.android.modules.utils.BasicShellCommandHandler;
import java.io.PrintWriter;
import java.util.Arrays;
import java.util.Collections;
import java.util.List;
import java.util.Objects;

/* loaded from: classes2.dex */
public class LocationShellCommand extends BasicShellCommandHandler {
    public final Context mContext;
    public final LocationManagerService mService;

    public LocationShellCommand(Context context, LocationManagerService locationManagerService) {
        this.mContext = context;
        Objects.requireNonNull(locationManagerService);
        this.mService = locationManagerService;
    }

    public int onCommand(String str) {
        if (str == null) {
            return handleDefaultCommands((String) null);
        }
        char c = 65535;
        switch (str.hashCode()) {
            case -1064420500:
                if (str.equals("is-location-enabled")) {
                    c = 0;
                    break;
                }
                break;
            case -547571550:
                if (str.equals("providers")) {
                    c = 1;
                    break;
                }
                break;
            case -444268534:
                if (str.equals("is-automotive-gnss-suspended")) {
                    c = 2;
                    break;
                }
                break;
            case -361391806:
                if (str.equals("set-automotive-gnss-suspended")) {
                    c = 3;
                    break;
                }
                break;
            case -84945726:
                if (str.equals("set-adas-gnss-location-enabled")) {
                    c = 4;
                    break;
                }
                break;
            case 1546249012:
                if (str.equals("set-location-enabled")) {
                    c = 5;
                    break;
                }
                break;
            case 1640843002:
                if (str.equals("is-adas-gnss-location-enabled")) {
                    c = 6;
                    break;
                }
                break;
        }
        switch (c) {
            case 0:
                handleIsLocationEnabled();
                return 0;
            case 1:
                return parseProvidersCommand(getNextArgRequired());
            case 2:
                handleIsAutomotiveGnssSuspended();
                return 0;
            case 3:
                handleSetAutomotiveGnssSuspended();
                return 0;
            case 4:
                handleSetAdasGnssLocationEnabled();
                return 0;
            case 5:
                handleSetLocationEnabled();
                return 0;
            case 6:
                handleIsAdasGnssLocationEnabled();
                return 0;
            default:
                return handleDefaultCommands(str);
        }
    }

    public final int parseProvidersCommand(String str) {
        str.hashCode();
        char c = 65535;
        switch (str.hashCode()) {
            case -1669563581:
                if (str.equals("remove-test-provider")) {
                    c = 0;
                    break;
                }
                break;
            case -1650104991:
                if (str.equals("set-test-provider-location")) {
                    c = 1;
                    break;
                }
                break;
            case -61579243:
                if (str.equals("set-test-provider-enabled")) {
                    c = 2;
                    break;
                }
                break;
            case 11404448:
                if (str.equals("add-test-provider")) {
                    c = 3;
                    break;
                }
                break;
            case 2036447497:
                if (str.equals("send-extra-command")) {
                    c = 4;
                    break;
                }
                break;
        }
        switch (c) {
            case 0:
                handleRemoveTestProvider();
                return 0;
            case 1:
                handleSetTestProviderLocation();
                return 0;
            case 2:
                handleSetTestProviderEnabled();
                return 0;
            case 3:
                handleAddTestProvider();
                return 0;
            case 4:
                handleSendExtraCommand();
                return 0;
            default:
                return handleDefaultCommands(str);
        }
    }

    public final void handleIsLocationEnabled() {
        int i = -3;
        while (true) {
            String nextOption = getNextOption();
            if (nextOption != null) {
                if ("--user".equals(nextOption)) {
                    i = UserHandle.parseUserArg(getNextArgRequired());
                } else {
                    throw new IllegalArgumentException("Unknown option: " + nextOption);
                }
            } else {
                getOutPrintWriter().println(this.mService.isLocationEnabledForUser(i));
                return;
            }
        }
    }

    public final void handleSetLocationEnabled() {
        boolean parseBoolean = Boolean.parseBoolean(getNextArgRequired());
        int i = -3;
        while (true) {
            String nextOption = getNextOption();
            if (nextOption != null) {
                if ("--user".equals(nextOption)) {
                    i = UserHandle.parseUserArg(getNextArgRequired());
                } else {
                    throw new IllegalArgumentException("Unknown option: " + nextOption);
                }
            } else {
                this.mService.setLocationEnabledForUser(parseBoolean, i);
                return;
            }
        }
    }

    public final void handleIsAdasGnssLocationEnabled() {
        if (!this.mContext.getPackageManager().hasSystemFeature("android.hardware.type.automotive")) {
            throw new IllegalStateException("command only recognized on automotive devices");
        }
        int i = -3;
        while (true) {
            String nextOption = getNextOption();
            if (nextOption != null) {
                if ("--user".equals(nextOption)) {
                    i = UserHandle.parseUserArg(getNextArgRequired());
                } else {
                    throw new IllegalArgumentException("Unknown option: " + nextOption);
                }
            } else {
                getOutPrintWriter().println(this.mService.isAdasGnssLocationEnabledForUser(i));
                return;
            }
        }
    }

    public final void handleSetAdasGnssLocationEnabled() {
        if (!this.mContext.getPackageManager().hasSystemFeature("android.hardware.type.automotive")) {
            throw new IllegalStateException("command only recognized on automotive devices");
        }
        boolean parseBoolean = Boolean.parseBoolean(getNextArgRequired());
        int i = -3;
        while (true) {
            String nextOption = getNextOption();
            if (nextOption != null) {
                if ("--user".equals(nextOption)) {
                    i = UserHandle.parseUserArg(getNextArgRequired());
                } else {
                    throw new IllegalArgumentException("Unknown option: " + nextOption);
                }
            } else {
                this.mService.setAdasGnssLocationEnabledForUser(parseBoolean, i);
                return;
            }
        }
    }

    public final void handleSetAutomotiveGnssSuspended() {
        if (!this.mContext.getPackageManager().hasSystemFeature("android.hardware.type.automotive")) {
            throw new IllegalStateException("command only recognized on automotive devices");
        }
        this.mService.setAutomotiveGnssSuspended(Boolean.parseBoolean(getNextArgRequired()));
    }

    public final void handleIsAutomotiveGnssSuspended() {
        if (!this.mContext.getPackageManager().hasSystemFeature("android.hardware.type.automotive")) {
            throw new IllegalStateException("command only recognized on automotive devices");
        }
        getOutPrintWriter().println(this.mService.isAutomotiveGnssSuspended());
    }

    /* JADX WARN: Failed to find 'out' block for switch in B:5:0x0064. Please report as an issue. */
    public final void handleAddTestProvider() {
        String nextArgRequired = getNextArgRequired();
        List emptyList = Collections.emptyList();
        boolean z = false;
        boolean z2 = false;
        boolean z3 = false;
        boolean z4 = false;
        boolean z5 = false;
        boolean z6 = false;
        boolean z7 = false;
        int i = 1;
        int i2 = 1;
        while (true) {
            String nextOption = getNextOption();
            if (nextOption != null) {
                char c = 65535;
                switch (nextOption.hashCode()) {
                    case -2115952999:
                        if (nextOption.equals("--accuracy")) {
                            c = 0;
                            break;
                        }
                        break;
                    case -1786843904:
                        if (nextOption.equals("--requiresNetwork")) {
                            c = 1;
                            break;
                        }
                        break;
                    case -1474799448:
                        if (nextOption.equals("--extraAttributionTags")) {
                            c = 2;
                            break;
                        }
                        break;
                    case -1446936854:
                        if (nextOption.equals("--supportsBearing")) {
                            c = 3;
                            break;
                        }
                        break;
                    case -1194644762:
                        if (nextOption.equals("--supportsAltitude")) {
                            c = 4;
                            break;
                        }
                        break;
                    case 1086076880:
                        if (nextOption.equals("--requiresCell")) {
                            c = 5;
                            break;
                        }
                        break;
                    case 1279633236:
                        if (nextOption.equals("--hasMonetaryCost")) {
                            c = 6;
                            break;
                        }
                        break;
                    case 1483009933:
                        if (nextOption.equals("--requiresSatellite")) {
                            c = 7;
                            break;
                        }
                        break;
                    case 1601002398:
                        if (nextOption.equals("--powerRequirement")) {
                            c = '\b';
                            break;
                        }
                        break;
                    case 2048042627:
                        if (nextOption.equals("--supportsSpeed")) {
                            c = '\t';
                            break;
                        }
                        break;
                }
                switch (c) {
                    case 0:
                        i2 = Integer.parseInt(getNextArgRequired());
                        break;
                    case 1:
                        z = true;
                        break;
                    case 2:
                        emptyList = Arrays.asList(getNextArgRequired().split(","));
                        break;
                    case 3:
                        z7 = true;
                        break;
                    case 4:
                        z5 = true;
                        break;
                    case 5:
                        z3 = true;
                        break;
                    case 6:
                        z4 = true;
                        break;
                    case 7:
                        z2 = true;
                        break;
                    case '\b':
                        i = Integer.parseInt(getNextArgRequired());
                        break;
                    case '\t':
                        z6 = true;
                        break;
                    default:
                        throw new IllegalArgumentException("Received unexpected option: " + nextOption);
                }
            } else {
                this.mService.addTestProvider(nextArgRequired, new ProviderProperties.Builder().setHasNetworkRequirement(z).setHasSatelliteRequirement(z2).setHasCellRequirement(z3).setHasMonetaryCost(z4).setHasAltitudeSupport(z5).setHasSpeedSupport(z6).setHasBearingSupport(z7).setPowerUsage(i).setAccuracy(i2).build(), emptyList, this.mContext.getOpPackageName(), this.mContext.getAttributionTag());
                return;
            }
        }
    }

    public final void handleRemoveTestProvider() {
        this.mService.removeTestProvider(getNextArgRequired(), this.mContext.getOpPackageName(), this.mContext.getAttributionTag());
    }

    public final void handleSetTestProviderEnabled() {
        this.mService.setTestProviderEnabled(getNextArgRequired(), Boolean.parseBoolean(getNextArgRequired()), this.mContext.getOpPackageName(), this.mContext.getAttributionTag());
    }

    /* JADX WARN: Removed duplicated region for block: B:16:0x006e A[SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:20:0x00c2 A[SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:24:0x00cf A[SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:27:0x0085 A[SYNTHETIC] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public final void handleSetTestProviderLocation() {
        /*
            r9 = this;
            java.lang.String r0 = r9.getNextArgRequired()
            android.location.Location r1 = new android.location.Location
            r1.<init>(r0)
            r2 = 1120403456(0x42c80000, float:100.0)
            r1.setAccuracy(r2)
            long r2 = java.lang.System.currentTimeMillis()
            r1.setTime(r2)
            long r2 = android.os.SystemClock.elapsedRealtimeNanos()
            r1.setElapsedRealtimeNanos(r2)
            r2 = 0
            r3 = r2
        L1e:
            java.lang.String r4 = r9.getNextOption()
            if (r4 != 0) goto L40
            if (r3 == 0) goto L38
            com.android.server.location.LocationManagerService r2 = r9.mService
            android.content.Context r3 = r9.mContext
            java.lang.String r3 = r3.getOpPackageName()
            android.content.Context r9 = r9.mContext
            java.lang.String r9 = r9.getAttributionTag()
            r2.setTestProviderLocation(r0, r1, r3, r9)
            return
        L38:
            java.lang.IllegalArgumentException r9 = new java.lang.IllegalArgumentException
            java.lang.String r0 = "Option \"--location\" is required"
            r9.<init>(r0)
            throw r9
        L40:
            int r5 = r4.hashCode()
            r6 = 2
            r7 = 1
            r8 = -1
            switch(r5) {
                case -2115952999: goto L61;
                case 1333430381: goto L56;
                case 1916798293: goto L4b;
                default: goto L4a;
            }
        L4a:
            goto L6b
        L4b:
            java.lang.String r5 = "--location"
            boolean r5 = r4.equals(r5)
            if (r5 != 0) goto L54
            goto L6b
        L54:
            r8 = r6
            goto L6b
        L56:
            java.lang.String r5 = "--time"
            boolean r5 = r4.equals(r5)
            if (r5 != 0) goto L5f
            goto L6b
        L5f:
            r8 = r7
            goto L6b
        L61:
            java.lang.String r5 = "--accuracy"
            boolean r5 = r4.equals(r5)
            if (r5 != 0) goto L6a
            goto L6b
        L6a:
            r8 = r2
        L6b:
            switch(r8) {
                case 0: goto Lcf;
                case 1: goto Lc2;
                case 2: goto L85;
                default: goto L6e;
            }
        L6e:
            java.lang.IllegalArgumentException r9 = new java.lang.IllegalArgumentException
            java.lang.StringBuilder r0 = new java.lang.StringBuilder
            r0.<init>()
            java.lang.String r1 = "Unknown option: "
            r0.append(r1)
            r0.append(r4)
            java.lang.String r0 = r0.toString()
            r9.<init>(r0)
            throw r9
        L85:
            java.lang.String r3 = r9.getNextArgRequired()
            java.lang.String r4 = ","
            java.lang.String[] r3 = r3.split(r4)
            int r4 = r3.length
            if (r4 != r6) goto La7
            r4 = r3[r2]
            double r4 = java.lang.Double.parseDouble(r4)
            r1.setLatitude(r4)
            r3 = r3[r7]
            double r3 = java.lang.Double.parseDouble(r3)
            r1.setLongitude(r3)
            r3 = r7
            goto L1e
        La7:
            java.lang.IllegalArgumentException r9 = new java.lang.IllegalArgumentException
            java.lang.StringBuilder r0 = new java.lang.StringBuilder
            r0.<init>()
            java.lang.String r1 = "Location argument must be in the form of \"<LATITUDE>,<LONGITUDE>\", not "
            r0.append(r1)
            java.lang.String r1 = java.util.Arrays.toString(r3)
            r0.append(r1)
            java.lang.String r0 = r0.toString()
            r9.<init>(r0)
            throw r9
        Lc2:
            java.lang.String r4 = r9.getNextArgRequired()
            long r4 = java.lang.Long.parseLong(r4)
            r1.setTime(r4)
            goto L1e
        Lcf:
            java.lang.String r4 = r9.getNextArgRequired()
            float r4 = java.lang.Float.parseFloat(r4)
            r1.setAccuracy(r4)
            goto L1e
        */
        throw new UnsupportedOperationException("Method not decompiled: com.android.server.location.LocationShellCommand.handleSetTestProviderLocation():void");
    }

    public final void handleSendExtraCommand() {
        this.mService.sendExtraCommand(getNextArgRequired(), getNextArgRequired(), null);
    }

    public void onHelp() {
        PrintWriter outPrintWriter = getOutPrintWriter();
        outPrintWriter.println("Location service commands:");
        outPrintWriter.println("  help or -h");
        outPrintWriter.println("    Print this help text.");
        outPrintWriter.println("  is-location-enabled [--user <USER_ID>]");
        outPrintWriter.println("    Gets the master location switch enabled state. If no user is specified,");
        outPrintWriter.println("    the current user is assumed.");
        outPrintWriter.println("  set-location-enabled true|false [--user <USER_ID>]");
        outPrintWriter.println("    Sets the master location switch enabled state. If no user is specified,");
        outPrintWriter.println("    the current user is assumed.");
        if (this.mContext.getPackageManager().hasSystemFeature("android.hardware.type.automotive")) {
            outPrintWriter.println("  is-adas-gnss-location-enabled [--user <USER_ID>]");
            outPrintWriter.println("    Gets the ADAS GNSS location enabled state. If no user is specified,");
            outPrintWriter.println("    the current user is assumed.");
            outPrintWriter.println("  set-adas-gnss-location-enabled true|false [--user <USER_ID>]");
            outPrintWriter.println("    Sets the ADAS GNSS location enabled state. If no user is specified,");
            outPrintWriter.println("    the current user is assumed.");
            outPrintWriter.println("  is-automotive-gnss-suspended");
            outPrintWriter.println("    Gets the automotive GNSS suspended state.");
            outPrintWriter.println("  set-automotive-gnss-suspended true|false");
            outPrintWriter.println("    Sets the automotive GNSS suspended state.");
        }
        outPrintWriter.println("  providers");
        outPrintWriter.println("    The providers command is followed by a subcommand, as listed below:");
        outPrintWriter.println();
        outPrintWriter.println("    add-test-provider <PROVIDER> [--requiresNetwork] [--requiresSatellite]");
        outPrintWriter.println("      [--requiresCell] [--hasMonetaryCost] [--supportsAltitude]");
        outPrintWriter.println("      [--supportsSpeed] [--supportsBearing]");
        outPrintWriter.println("      [--powerRequirement <POWER_REQUIREMENT>]");
        outPrintWriter.println("      [--extraAttributionTags <TAG>,<TAG>,...]");
        outPrintWriter.println("      Add the given test provider. Requires MOCK_LOCATION permissions which");
        outPrintWriter.println("      can be enabled by running \"adb shell appops set <uid>");
        outPrintWriter.println("      android:mock_location allow\". There are optional flags that can be");
        outPrintWriter.println("      used to configure the provider properties and additional arguments. If");
        outPrintWriter.println("      no flags are included, then default values will be used.");
        outPrintWriter.println("    remove-test-provider <PROVIDER>");
        outPrintWriter.println("      Remove the given test provider.");
        outPrintWriter.println("    set-test-provider-enabled <PROVIDER> true|false");
        outPrintWriter.println("      Sets the given test provider enabled state.");
        outPrintWriter.println("    set-test-provider-location <PROVIDER> --location <LATITUDE>,<LONGITUDE>");
        outPrintWriter.println("      [--accuracy <ACCURACY>] [--time <TIME>]");
        outPrintWriter.println("      Set location for given test provider. Accuracy and time are optional.");
        outPrintWriter.println("    send-extra-command <PROVIDER> <COMMAND>");
        outPrintWriter.println("      Sends the given extra command to the given provider.");
        outPrintWriter.println();
        outPrintWriter.println("      Common commands that may be supported by the gps provider, depending on");
        outPrintWriter.println("      hardware and software configurations:");
        outPrintWriter.println("        delete_aiding_data - requests deletion of any predictive aiding data");
        outPrintWriter.println("        force_time_injection - requests NTP time injection");
        outPrintWriter.println("        force_psds_injection - requests predictive aiding data injection");
        outPrintWriter.println("        request_power_stats - requests GNSS power stats update");
    }
}
