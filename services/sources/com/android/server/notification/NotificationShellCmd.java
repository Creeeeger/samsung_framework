package com.android.server.notification;

import android.app.ActivityManager;
import android.app.INotificationManager;
import android.app.NotificationChannel;
import android.content.ComponentName;
import android.content.pm.PackageManager;
import android.content.pm.ParceledListSlice;
import android.content.res.Resources;
import android.graphics.drawable.Icon;
import android.net.Uri;
import android.net.resolv.aidl.IDnsResolverUnsolicitedEventListener;
import android.os.Binder;
import android.os.ShellCommand;
import android.os.UserHandle;
import android.service.notification.NotificationListenerService;
import android.service.notification.StatusBarNotification;
import android.text.TextUtils;
import android.util.Base64;
import android.util.Slog;
import java.io.PrintWriter;
import java.util.Collections;
import java.util.Date;
import java.util.Iterator;

/* loaded from: classes2.dex */
public class NotificationShellCmd extends ShellCommand {
    public final INotificationManager mBinderService;
    public final NotificationManagerService mDirectService;
    public final PackageManager mPm;

    public boolean checkShellCommandPermission(int i) {
        return i == 0 || i == 2000;
    }

    public NotificationShellCmd(NotificationManagerService notificationManagerService) {
        this.mDirectService = notificationManagerService;
        this.mBinderService = notificationManagerService.getBinderService();
        this.mPm = notificationManagerService.getContext().getPackageManager();
    }

    public int onCommand(String str) {
        String str2;
        int i;
        char c;
        char c2;
        boolean z;
        String str3;
        long j;
        if (str == null) {
            return handleDefaultCommands(str);
        }
        int callingUid = Binder.getCallingUid();
        long clearCallingIdentity = Binder.clearCallingIdentity();
        try {
            if (callingUid == 0) {
                str2 = "root";
            } else {
                try {
                    String[] packagesForUid = this.mPm.getPackagesForUid(callingUid);
                    str2 = (packagesForUid == null || packagesForUid.length <= 0) ? null : packagesForUid[0];
                } catch (Exception e) {
                    Slog.e("NotifShellCmd", "failed to get caller pkg", e);
                    Binder.restoreCallingIdentity(clearCallingIdentity);
                    str2 = null;
                }
            }
            PrintWriter outPrintWriter = getOutPrintWriter();
            if (!checkShellCommandPermission(callingUid)) {
                Slog.e("NotifShellCmd", "error: permission denied: callingUid=" + callingUid + " callingPackage=" + str2);
                outPrintWriter.println("error: permission denied: callingUid=" + callingUid + " callingPackage=" + str2);
                return IDnsResolverUnsolicitedEventListener.DNS_HEALTH_RESULT_TIMEOUT;
            }
            try {
                String replace = str.replace('-', '_');
                i = 4;
                c = 65535;
                switch (replace.hashCode()) {
                    case -2056114370:
                        if (replace.equals("snoozed")) {
                            c2 = 15;
                            break;
                        }
                        c2 = 65535;
                        break;
                    case -1736066994:
                        if (replace.equals("set_bubbles_channel")) {
                            c2 = '\n';
                            break;
                        }
                        c2 = 65535;
                        break;
                    case -1325770982:
                        if (replace.equals("disallow_assistant")) {
                            c2 = 6;
                            break;
                        }
                        c2 = 65535;
                        break;
                    case -1039689911:
                        if (replace.equals("notify")) {
                            c2 = '\f';
                            break;
                        }
                        c2 = 65535;
                        break;
                    case -897610266:
                        if (replace.equals("snooze")) {
                            c2 = 17;
                            break;
                        }
                        c2 = 65535;
                        break;
                    case -432999190:
                        if (replace.equals("allow_listener")) {
                            c2 = 3;
                            break;
                        }
                        c2 = 65535;
                        break;
                    case -429832618:
                        if (replace.equals("disallow_dnd")) {
                            c2 = 2;
                            break;
                        }
                        c2 = 65535;
                        break;
                    case -414550305:
                        if (replace.equals("get_approved_assistant")) {
                            c2 = '\b';
                            break;
                        }
                        c2 = 65535;
                        break;
                    case -11106881:
                        if (replace.equals("unsnooze")) {
                            c2 = 16;
                            break;
                        }
                        c2 = 65535;
                        break;
                    case 102230:
                        if (replace.equals("get")) {
                            c2 = 14;
                            break;
                        }
                        c2 = 65535;
                        break;
                    case 3322014:
                        if (replace.equals("list")) {
                            c2 = '\r';
                            break;
                        }
                        c2 = 65535;
                        break;
                    case 3446944:
                        if (replace.equals("post")) {
                            c2 = 11;
                            break;
                        }
                        c2 = 65535;
                        break;
                    case 212123274:
                        if (replace.equals("set_bubbles")) {
                            c2 = '\t';
                            break;
                        }
                        c2 = 65535;
                        break;
                    case 372345636:
                        if (replace.equals("allow_dnd")) {
                            c2 = 1;
                            break;
                        }
                        c2 = 65535;
                        break;
                    case 683492127:
                        if (replace.equals("reset_assistant_user_set")) {
                            c2 = 7;
                            break;
                        }
                        c2 = 65535;
                        break;
                    case 1257269496:
                        if (replace.equals("disallow_listener")) {
                            c2 = 4;
                            break;
                        }
                        c2 = 65535;
                        break;
                    case 1985310653:
                        if (replace.equals("set_dnd")) {
                            c2 = 0;
                            break;
                        }
                        c2 = 65535;
                        break;
                    case 2110474600:
                        if (replace.equals("allow_assistant")) {
                            c2 = 5;
                            break;
                        }
                        c2 = 65535;
                        break;
                    default:
                        c2 = 65535;
                        break;
                }
            } catch (Exception e2) {
                outPrintWriter.println("Error occurred. Check logcat for details. " + e2.getMessage());
                Slog.e("NotificationService", "Error running shell command", e2);
            }
            switch (c2) {
                case 0:
                    String nextArgRequired = getNextArgRequired();
                    switch (nextArgRequired.hashCode()) {
                        case -1415196606:
                            if (nextArgRequired.equals("alarms")) {
                                c = 3;
                                break;
                            }
                            break;
                        case -1165461084:
                            if (nextArgRequired.equals("priority")) {
                                c = 2;
                                break;
                            }
                            break;
                        case 3551:
                            if (nextArgRequired.equals("on")) {
                                c = 1;
                                break;
                            }
                            break;
                        case 96673:
                            if (nextArgRequired.equals("all")) {
                                c = 4;
                                break;
                            }
                            break;
                        case 109935:
                            if (nextArgRequired.equals("off")) {
                                c = 5;
                                break;
                            }
                            break;
                        case 3387192:
                            if (nextArgRequired.equals("none")) {
                                c = 0;
                                break;
                            }
                            break;
                    }
                    if (c == 0 || c == 1) {
                        i = 3;
                    } else if (c == 2) {
                        i = 2;
                    } else if (c != 3) {
                        i = (c == 4 || c == 5) ? 1 : 0;
                    }
                    this.mBinderService.setInterruptionFilter(str2, i);
                    return 0;
                case 1:
                    String nextArgRequired2 = getNextArgRequired();
                    int currentUser = ActivityManager.getCurrentUser();
                    if (peekNextArg() != null) {
                        currentUser = Integer.parseInt(getNextArgRequired());
                    }
                    this.mBinderService.setNotificationPolicyAccessGrantedForUser(nextArgRequired2, currentUser, true);
                    return 0;
                case 2:
                    String nextArgRequired3 = getNextArgRequired();
                    int currentUser2 = ActivityManager.getCurrentUser();
                    if (peekNextArg() != null) {
                        currentUser2 = Integer.parseInt(getNextArgRequired());
                    }
                    this.mBinderService.setNotificationPolicyAccessGrantedForUser(nextArgRequired3, currentUser2, false);
                    return 0;
                case 3:
                    ComponentName unflattenFromString = ComponentName.unflattenFromString(getNextArgRequired());
                    if (unflattenFromString == null) {
                        outPrintWriter.println("Invalid listener - must be a ComponentName");
                        return -1;
                    }
                    int currentUser3 = ActivityManager.getCurrentUser();
                    if (peekNextArg() != null) {
                        currentUser3 = Integer.parseInt(getNextArgRequired());
                    }
                    this.mBinderService.setNotificationListenerAccessGrantedForUser(unflattenFromString, currentUser3, true, true);
                    return 0;
                case 4:
                    ComponentName unflattenFromString2 = ComponentName.unflattenFromString(getNextArgRequired());
                    if (unflattenFromString2 == null) {
                        outPrintWriter.println("Invalid listener - must be a ComponentName");
                        return -1;
                    }
                    int currentUser4 = ActivityManager.getCurrentUser();
                    if (peekNextArg() != null) {
                        currentUser4 = Integer.parseInt(getNextArgRequired());
                    }
                    this.mBinderService.setNotificationListenerAccessGrantedForUser(unflattenFromString2, currentUser4, false, true);
                    return 0;
                case 5:
                    ComponentName unflattenFromString3 = ComponentName.unflattenFromString(getNextArgRequired());
                    if (unflattenFromString3 == null) {
                        outPrintWriter.println("Invalid assistant - must be a ComponentName");
                        return -1;
                    }
                    int currentUser5 = ActivityManager.getCurrentUser();
                    if (peekNextArg() != null) {
                        currentUser5 = Integer.parseInt(getNextArgRequired());
                    }
                    this.mBinderService.setNotificationAssistantAccessGrantedForUser(unflattenFromString3, currentUser5, true);
                    return 0;
                case 6:
                    ComponentName unflattenFromString4 = ComponentName.unflattenFromString(getNextArgRequired());
                    if (unflattenFromString4 == null) {
                        outPrintWriter.println("Invalid assistant - must be a ComponentName");
                        return -1;
                    }
                    int currentUser6 = ActivityManager.getCurrentUser();
                    if (peekNextArg() != null) {
                        currentUser6 = Integer.parseInt(getNextArgRequired());
                    }
                    this.mBinderService.setNotificationAssistantAccessGrantedForUser(unflattenFromString4, currentUser6, false);
                    return 0;
                case 7:
                    int currentUser7 = ActivityManager.getCurrentUser();
                    if (peekNextArg() != null) {
                        currentUser7 = Integer.parseInt(getNextArgRequired());
                    }
                    this.mDirectService.resetAssistantUserSet(currentUser7);
                    return 0;
                case '\b':
                    int currentUser8 = ActivityManager.getCurrentUser();
                    if (peekNextArg() != null) {
                        currentUser8 = Integer.parseInt(getNextArgRequired());
                    }
                    ComponentName approvedAssistant = this.mDirectService.getApprovedAssistant(currentUser8);
                    if (approvedAssistant == null) {
                        outPrintWriter.println("null");
                    } else {
                        outPrintWriter.println(approvedAssistant.flattenToString());
                    }
                    return 0;
                case '\t':
                    String nextArgRequired4 = getNextArgRequired();
                    int parseInt = Integer.parseInt(getNextArgRequired());
                    if (parseInt <= 3 && parseInt >= 0) {
                        int currentUser9 = ActivityManager.getCurrentUser();
                        if (peekNextArg() != null) {
                            currentUser9 = Integer.parseInt(getNextArgRequired());
                        }
                        this.mBinderService.setBubblesAllowed(nextArgRequired4, UserHandle.getUid(currentUser9, this.mPm.getPackageUid(nextArgRequired4, 0)), parseInt);
                        return 0;
                    }
                    outPrintWriter.println("Invalid preference - must be between 0-3 (0=none 1=all 2=selected)");
                    return -1;
                case '\n':
                    String nextArgRequired5 = getNextArgRequired();
                    String nextArgRequired6 = getNextArgRequired();
                    boolean parseBoolean = Boolean.parseBoolean(getNextArgRequired());
                    int currentUser10 = ActivityManager.getCurrentUser();
                    if (peekNextArg() != null) {
                        currentUser10 = Integer.parseInt(getNextArgRequired());
                    }
                    NotificationChannel notificationChannel = this.mBinderService.getNotificationChannel(str2, currentUser10, nextArgRequired5, nextArgRequired6);
                    notificationChannel.setAllowBubbles(parseBoolean);
                    this.mBinderService.updateNotificationChannelForPackage(nextArgRequired5, UserHandle.getUid(currentUser10, this.mPm.getPackageUid(nextArgRequired5, 0)), notificationChannel);
                    return 0;
                case 11:
                case '\f':
                    doNotify(outPrintWriter, str2, callingUid);
                    return 0;
                case '\r':
                    Iterator it = this.mDirectService.mNotificationsByKey.keySet().iterator();
                    while (it.hasNext()) {
                        outPrintWriter.println((String) it.next());
                    }
                    return 0;
                case 14:
                    String nextArgRequired7 = getNextArgRequired();
                    NotificationRecord notificationRecord = this.mDirectService.getNotificationRecord(nextArgRequired7);
                    if (notificationRecord != null) {
                        notificationRecord.dump(outPrintWriter, "", this.mDirectService.getContext(), false);
                        return 0;
                    }
                    outPrintWriter.println("error: no active notification matching key: " + nextArgRequired7);
                    return 1;
                case 15:
                    SnoozeHelper snoozeHelper = this.mDirectService.mSnoozeHelper;
                    for (NotificationRecord notificationRecord2 : snoozeHelper.getSnoozed()) {
                        String packageName = notificationRecord2.getSbn().getPackageName();
                        String key = notificationRecord2.getKey();
                        outPrintWriter.println(key + " snoozed, time=" + snoozeHelper.getSnoozeTimeForUnpostedNotification(notificationRecord2.getUserId(), packageName, key) + " context=" + snoozeHelper.getSnoozeContextForUnpostedNotification(notificationRecord2.getUserId(), packageName, key));
                    }
                    return 0;
                case 16:
                    String nextArgRequired8 = getNextArgRequired();
                    if ("--mute".equals(nextArgRequired8)) {
                        nextArgRequired8 = getNextArgRequired();
                        z = true;
                    } else {
                        z = false;
                    }
                    if (this.mDirectService.mSnoozeHelper.getNotification(nextArgRequired8) != null) {
                        outPrintWriter.println("unsnoozing: " + nextArgRequired8);
                        this.mDirectService.unsnoozeNotificationInt(nextArgRequired8, null, z);
                        return 0;
                    }
                    outPrintWriter.println("error: no snoozed otification matching key: " + nextArgRequired8);
                    return 1;
                case 17:
                    String nextArg = getNextArg();
                    String str4 = "help";
                    if (nextArg == null) {
                        nextArg = "help";
                    } else if (nextArg.startsWith("--")) {
                        nextArg = nextArg.substring(2);
                    }
                    String nextArg2 = getNextArg();
                    String nextArg3 = getNextArg();
                    if (nextArg3 != null) {
                        str4 = nextArg;
                    }
                    switch (str4.hashCode()) {
                        case -1992012396:
                            if (str4.equals("duration")) {
                                c = 5;
                                break;
                            }
                            break;
                        case -861311717:
                            if (str4.equals("condition")) {
                                c = 1;
                                break;
                            }
                            break;
                        case 101577:
                            if (str4.equals("for")) {
                                c = 4;
                                break;
                            }
                            break;
                        case 111443806:
                            if (str4.equals("until")) {
                                c = 3;
                                break;
                            }
                            break;
                        case 383913633:
                            if (str4.equals("criterion")) {
                                c = 2;
                                break;
                            }
                            break;
                        case 951530927:
                            if (str4.equals("context")) {
                                c = 0;
                                break;
                            }
                            break;
                    }
                    if (c == 0 || c == 1 || c == 2) {
                        str3 = nextArg2;
                        j = 0;
                    } else if (c == 3 || c == 4 || c == 5) {
                        j = Long.parseLong(nextArg2);
                        str3 = null;
                    } else {
                        outPrintWriter.println("usage: cmd notification snooze (--for <msec> | --context <snooze-criterion-id>) <key>");
                        return 1;
                    }
                    if (j <= 0 && str3 == null) {
                        outPrintWriter.println("error: invalid value for --" + str4 + ": " + nextArg2);
                        return 1;
                    }
                    ShellNls shellNls = new ShellNls();
                    shellNls.registerAsSystemService(this.mDirectService.getContext(), new ComponentName(ShellNls.class.getPackageName(), ShellNls.class.getName()), ActivityManager.getCurrentUser());
                    if (!waitForBind(shellNls)) {
                        outPrintWriter.println("error: could not bind a listener in time");
                        return 1;
                    }
                    if (j > 0) {
                        outPrintWriter.println(String.format("snoozing <%s> until time: %s", nextArg3, new Date(System.currentTimeMillis() + j)));
                        shellNls.snoozeNotification(nextArg3, j);
                    } else {
                        outPrintWriter.println(String.format("snoozing <%s> until criterion: %s", nextArg3, str3));
                        shellNls.snoozeNotification(nextArg3, str3);
                    }
                    waitForSnooze(shellNls, nextArg3);
                    shellNls.unregisterAsSystemService();
                    waitForUnbind(shellNls);
                    return 0;
                default:
                    return handleDefaultCommands(str);
            }
        } finally {
            Binder.restoreCallingIdentity(clearCallingIdentity);
        }
    }

    public void ensureChannel(String str, int i) {
        this.mBinderService.createNotificationChannels(str, new ParceledListSlice(Collections.singletonList(new NotificationChannel("shell_cmd", "Shell command", 3))));
        Slog.v("NotificationService", "created channel: " + this.mBinderService.getNotificationChannel(str, UserHandle.getUserId(i), str, "shell_cmd"));
    }

    public Icon parseIcon(Resources resources, String str) {
        if (TextUtils.isEmpty(str)) {
            return null;
        }
        if (str.startsWith("/")) {
            str = "file://" + str;
        }
        if (str.startsWith("http:") || str.startsWith("https:") || str.startsWith("content:") || str.startsWith("file:") || str.startsWith("android.resource:")) {
            return Icon.createWithContentUri(Uri.parse(str));
        }
        if (str.startsWith("@")) {
            int identifier = resources.getIdentifier(str.substring(1), "drawable", "android");
            if (identifier != 0) {
                return Icon.createWithResource(resources, identifier);
            }
        } else if (str.startsWith("data:")) {
            byte[] decode = Base64.decode(str.substring(str.indexOf(44) + 1), 0);
            return Icon.createWithData(decode, 0, decode.length);
        }
        return null;
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    /* JADX WARN: Code restructure failed: missing block: B:38:0x02a9, code lost:
    
        if (r3.equals("inbox") == false) goto L137;
     */
    /* JADX WARN: Failed to find 'out' block for switch in B:5:0x0032. Please report as an issue. */
    /* JADX WARN: Failed to find 'out' block for switch in B:9:0x0194. Please report as an issue. */
    /* JADX WARN: Removed duplicated region for block: B:132:0x041b  */
    /* JADX WARN: Removed duplicated region for block: B:135:0x0405 A[SYNTHETIC] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public final int doNotify(java.io.PrintWriter r23, java.lang.String r24, int r25) {
        /*
            Method dump skipped, instructions count: 1504
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: com.android.server.notification.NotificationShellCmd.doNotify(java.io.PrintWriter, java.lang.String, int):int");
    }

    public final void waitForSnooze(ShellNls shellNls, String str) {
        for (int i = 0; i < 20; i++) {
            for (StatusBarNotification statusBarNotification : shellNls.getSnoozedNotifications()) {
                if (statusBarNotification.getKey().equals(str)) {
                    return;
                }
            }
            try {
                Thread.sleep(100L);
            } catch (InterruptedException e) {
                e.printStackTrace();
            }
        }
    }

    public final boolean waitForBind(ShellNls shellNls) {
        for (int i = 0; i < 20; i++) {
            if (shellNls.isConnected) {
                Slog.i("NotifShellCmd", "Bound Shell NLS");
                return true;
            }
            try {
                Thread.sleep(100L);
            } catch (InterruptedException e) {
                e.printStackTrace();
            }
        }
        return false;
    }

    public final void waitForUnbind(ShellNls shellNls) {
        for (int i = 0; i < 10; i++) {
            if (!shellNls.isConnected) {
                Slog.i("NotifShellCmd", "Unbound Shell NLS");
                return;
            }
            try {
                Thread.sleep(100L);
            } catch (InterruptedException e) {
                e.printStackTrace();
            }
        }
    }

    public void onHelp() {
        getOutPrintWriter().println("usage: cmd notification SUBCMD [args]\n\nSUBCMDs:\n  allow_listener COMPONENT [user_id (current user if not specified)]\n  disallow_listener COMPONENT [user_id (current user if not specified)]\n  allow_assistant COMPONENT [user_id (current user if not specified)]\n  remove_assistant COMPONENT [user_id (current user if not specified)]\n  set_dnd [on|none (same as on)|priority|alarms|all|off (same as all)]  allow_dnd PACKAGE [user_id (current user if not specified)]\n  disallow_dnd PACKAGE [user_id (current user if not specified)]\n  reset_assistant_user_set [user_id (current user if not specified)]\n  get_approved_assistant [user_id (current user if not specified)]\n  post [--help | flags] TAG TEXT\n  set_bubbles PACKAGE PREFERENCE (0=none 1=all 2=selected) [user_id (current user if not specified)]\n  set_bubbles_channel PACKAGE CHANNEL_ID ALLOW [user_id (current user if not specified)]\n  list\n  get <notification-key>\n  snooze --for <msec> <notification-key>\n  unsnooze <notification-key>\n");
    }

    /* loaded from: classes2.dex */
    public class ShellNls extends NotificationListenerService {
        public static ShellNls sNotificationListenerInstance;
        public boolean isConnected;

        public ShellNls() {
        }

        @Override // android.service.notification.NotificationListenerService
        public void onListenerConnected() {
            super.onListenerConnected();
            sNotificationListenerInstance = this;
            this.isConnected = true;
        }

        @Override // android.service.notification.NotificationListenerService
        public void onListenerDisconnected() {
            this.isConnected = false;
        }
    }
}
