package com.android.server.notification;

import android.app.NotificationHistory;
import android.net.Uri;
import android.text.TextUtils;
import android.util.Slog;
import android.util.proto.ProtoInputStream;
import android.util.proto.ProtoOutputStream;
import java.io.InputStream;
import java.io.OutputStream;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.List;

/* loaded from: classes2.dex */
public abstract class NotificationHistoryProtoHelper {
    public static List readStringPool(ProtoInputStream protoInputStream) {
        ArrayList arrayList;
        long start = protoInputStream.start(1146756268033L);
        if (protoInputStream.nextField(1120986464257L)) {
            arrayList = new ArrayList(protoInputStream.readInt(1120986464257L));
        } else {
            arrayList = new ArrayList();
        }
        while (protoInputStream.nextField() != -1) {
            if (protoInputStream.getFieldNumber() == 2) {
                arrayList.add(protoInputStream.readString(2237677961218L));
            }
        }
        protoInputStream.end(start);
        return arrayList;
    }

    public static void writeStringPool(ProtoOutputStream protoOutputStream, NotificationHistory notificationHistory) {
        long start = protoOutputStream.start(1146756268033L);
        String[] pooledStringsToWrite = notificationHistory.getPooledStringsToWrite();
        protoOutputStream.write(1120986464257L, pooledStringsToWrite.length);
        for (String str : pooledStringsToWrite) {
            protoOutputStream.write(2237677961218L, str);
        }
        protoOutputStream.end(start);
    }

    public static void readNotification(ProtoInputStream protoInputStream, List list, NotificationHistory notificationHistory, NotificationHistoryFilter notificationHistoryFilter) {
        long start = protoInputStream.start(2246267895811L);
        try {
            try {
                NotificationHistory.HistoricalNotification readNotification = readNotification(protoInputStream, list);
                if (notificationHistoryFilter.isSbnFilter()) {
                    if (notificationHistoryFilter.matchesPackageAndSbnKeyFilter(readNotification) && notificationHistoryFilter.matchesCountFilter(notificationHistory)) {
                        notificationHistory.addNotificationToWrite(readNotification);
                    }
                } else if (notificationHistoryFilter.matchesPackageAndChannelFilter(readNotification) && notificationHistoryFilter.matchesCountFilter(notificationHistory)) {
                    notificationHistory.addNotificationToWrite(readNotification);
                }
            } catch (Exception e) {
                Slog.e("NotifHistoryProto", "Error reading notification", e);
            }
        } finally {
            protoInputStream.end(start);
        }
    }

    /* JADX WARN: Code restructure failed: missing block: B:68:0x014d, code lost:
    
        return r0.build();
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public static android.app.NotificationHistory.HistoricalNotification readNotification(android.util.proto.ProtoInputStream r5, java.util.List r6) {
        /*
            Method dump skipped, instructions count: 380
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: com.android.server.notification.NotificationHistoryProtoHelper.readNotification(android.util.proto.ProtoInputStream, java.util.List):android.app.NotificationHistory$HistoricalNotification");
    }

    /* JADX WARN: Code restructure failed: missing block: B:32:0x0060, code lost:
    
        if (r0 != 3) goto L20;
     */
    /* JADX WARN: Code restructure failed: missing block: B:33:0x0062, code lost:
    
        if (r5 == null) goto L56;
     */
    /* JADX WARN: Code restructure failed: missing block: B:34:0x0064, code lost:
    
        r11.setIcon(android.graphics.drawable.Icon.createWithData(r5, r3, r4));
     */
    /* JADX WARN: Code restructure failed: missing block: B:36:0x00a5, code lost:
    
        return;
     */
    /* JADX WARN: Code restructure failed: missing block: B:39:?, code lost:
    
        return;
     */
    /* JADX WARN: Code restructure failed: missing block: B:41:0x006f, code lost:
    
        if (r0 != 2) goto L26;
     */
    /* JADX WARN: Code restructure failed: missing block: B:42:0x0071, code lost:
    
        if (r2 == 0) goto L57;
     */
    /* JADX WARN: Code restructure failed: missing block: B:43:0x0073, code lost:
    
        if (r7 == null) goto L25;
     */
    /* JADX WARN: Code restructure failed: missing block: B:44:0x0075, code lost:
    
        r12 = r7;
     */
    /* JADX WARN: Code restructure failed: missing block: B:45:0x0076, code lost:
    
        r11.setIcon(android.graphics.drawable.Icon.createWithResource(r12, r2));
     */
    /* JADX WARN: Code restructure failed: missing block: B:46:?, code lost:
    
        return;
     */
    /* JADX WARN: Code restructure failed: missing block: B:48:0x007f, code lost:
    
        if (r0 != 4) goto L58;
     */
    /* JADX WARN: Code restructure failed: missing block: B:49:0x0081, code lost:
    
        if (r6 == null) goto L59;
     */
    /* JADX WARN: Code restructure failed: missing block: B:50:0x0083, code lost:
    
        r11.setIcon(android.graphics.drawable.Icon.createWithContentUri(r6));
     */
    /* JADX WARN: Code restructure failed: missing block: B:51:?, code lost:
    
        return;
     */
    /* JADX WARN: Code restructure failed: missing block: B:52:?, code lost:
    
        return;
     */
    /* JADX WARN: Code restructure failed: missing block: B:53:0x006c, code lost:
    
        r10 = move-exception;
     */
    /* JADX WARN: Code restructure failed: missing block: B:55:0x008b, code lost:
    
        android.util.Slog.d("NotifHistoryProto", "loadIcon IllegalArgumentException " + r10);
        r11.setIcon((android.graphics.drawable.Icon) null);
     */
    /* JADX WARN: Code restructure failed: missing block: B:56:?, code lost:
    
        return;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public static void loadIcon(android.util.proto.ProtoInputStream r10, android.app.NotificationHistory.HistoricalNotification.Builder r11, java.lang.String r12) {
        /*
            r0 = 0
            r1 = 0
            r2 = r0
            r3 = r2
            r4 = r3
            r5 = r1
            r6 = r5
            r7 = r6
        L8:
            int r8 = r10.nextField()
            switch(r8) {
                case -1: goto L5f;
                case 0: goto Lf;
                case 1: goto L55;
                case 2: goto L4c;
                case 3: goto L42;
                case 4: goto L38;
                case 5: goto L2e;
                case 6: goto L24;
                case 7: goto L1a;
                case 8: goto L10;
                default: goto Lf;
            }
        Lf:
            goto L8
        L10:
            r8 = 1138166333448(0x10900000008, double:5.623288846097E-312)
            java.lang.String r6 = r10.readString(r8)
            goto L8
        L1a:
            r8 = 1120986464263(0x10500000007, double:5.538409014454E-312)
            int r3 = r10.readInt(r8)
            goto L8
        L24:
            r8 = 1120986464262(0x10500000006, double:5.53840901445E-312)
            int r4 = r10.readInt(r8)
            goto L8
        L2e:
            r8 = 1151051235333(0x10c00000005, double:5.68694871981E-312)
            byte[] r5 = r10.readBytes(r8)
            goto L8
        L38:
            r7 = 1138166333444(0x10900000004, double:5.62328884608E-312)
            java.lang.String r7 = r10.readString(r7)
            goto L8
        L42:
            r8 = 1120986464259(0x10500000003, double:5.538409014434E-312)
            int r2 = r10.readInt(r8)
            goto L8
        L4c:
            r8 = 1138166333442(0x10900000002, double:5.62328884607E-312)
            r10.readString(r8)
            goto L8
        L55:
            r8 = 1159641169921(0x10e00000001, double:5.72938863561E-312)
            int r0 = r10.readInt(r8)
            goto L8
        L5f:
            r10 = 3
            if (r0 != r10) goto L6e
            if (r5 == 0) goto La5
            android.graphics.drawable.Icon r10 = android.graphics.drawable.Icon.createWithData(r5, r3, r4)     // Catch: java.lang.IllegalArgumentException -> L6c
            r11.setIcon(r10)     // Catch: java.lang.IllegalArgumentException -> L6c
            goto La5
        L6c:
            r10 = move-exception
            goto L8b
        L6e:
            r10 = 2
            if (r0 != r10) goto L7e
            if (r2 == 0) goto La5
            if (r7 == 0) goto L76
            r12 = r7
        L76:
            android.graphics.drawable.Icon r10 = android.graphics.drawable.Icon.createWithResource(r12, r2)     // Catch: java.lang.IllegalArgumentException -> L6c
            r11.setIcon(r10)     // Catch: java.lang.IllegalArgumentException -> L6c
            goto La5
        L7e:
            r10 = 4
            if (r0 != r10) goto La5
            if (r6 == 0) goto La5
            android.graphics.drawable.Icon r10 = android.graphics.drawable.Icon.createWithContentUri(r6)     // Catch: java.lang.IllegalArgumentException -> L6c
            r11.setIcon(r10)     // Catch: java.lang.IllegalArgumentException -> L6c
            goto La5
        L8b:
            java.lang.StringBuilder r12 = new java.lang.StringBuilder
            r12.<init>()
            java.lang.String r0 = "loadIcon IllegalArgumentException "
            r12.append(r0)
            r12.append(r10)
            java.lang.String r10 = r12.toString()
            java.lang.String r12 = "NotifHistoryProto"
            android.util.Slog.d(r12, r10)
            r11.setIcon(r1)
        La5:
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: com.android.server.notification.NotificationHistoryProtoHelper.loadIcon(android.util.proto.ProtoInputStream, android.app.NotificationHistory$HistoricalNotification$Builder, java.lang.String):void");
    }

    public static void writeIcon(ProtoOutputStream protoOutputStream, NotificationHistory.HistoricalNotification historicalNotification) {
        long start = protoOutputStream.start(1146756268044L);
        try {
            try {
                protoOutputStream.write(1159641169921L, historicalNotification.getIcon().getType());
                int type = historicalNotification.getIcon().getType();
                if (type == 2) {
                    protoOutputStream.write(1120986464259L, historicalNotification.getIcon().getResId());
                    if (!historicalNotification.getPackage().equals(historicalNotification.getIcon().getResPackage())) {
                        protoOutputStream.write(1138166333444L, historicalNotification.getIcon().getResPackage());
                    }
                } else if (type == 3) {
                    protoOutputStream.write(1151051235333L, historicalNotification.getIcon().getDataBytes());
                    protoOutputStream.write(1120986464262L, historicalNotification.getIcon().getDataLength());
                    protoOutputStream.write(1120986464263L, historicalNotification.getIcon().getDataOffset());
                } else if (type == 4) {
                    protoOutputStream.write(1138166333448L, historicalNotification.getIcon().getUriString());
                }
            } catch (Exception e) {
                Slog.e("NotifHistoryProto", "Error writing notification icon -", e);
            }
        } finally {
            protoOutputStream.end(start);
        }
    }

    public static void writeNotification(ProtoOutputStream protoOutputStream, String[] strArr, NotificationHistory.HistoricalNotification historicalNotification) {
        long start = protoOutputStream.start(2246267895811L);
        try {
            try {
                int binarySearch = Arrays.binarySearch(strArr, historicalNotification.getPackage());
                if (binarySearch >= 0) {
                    protoOutputStream.write(1120986464258L, binarySearch + 1);
                } else {
                    Slog.w("NotifHistoryProto", "notification package name (" + historicalNotification.getPackage() + ") not found in string cache");
                    protoOutputStream.write(1138166333441L, historicalNotification.getPackage());
                }
                int binarySearch2 = Arrays.binarySearch(strArr, historicalNotification.getChannelName());
                if (binarySearch2 >= 0) {
                    protoOutputStream.write(1120986464260L, binarySearch2 + 1);
                } else {
                    protoOutputStream.write(1138166333443L, historicalNotification.getChannelName());
                }
                int binarySearch3 = Arrays.binarySearch(strArr, historicalNotification.getChannelId());
                if (binarySearch3 >= 0) {
                    protoOutputStream.write(1120986464262L, binarySearch3 + 1);
                } else {
                    protoOutputStream.write(1138166333445L, historicalNotification.getChannelId());
                }
                if (!TextUtils.isEmpty(historicalNotification.getConversationId())) {
                    int binarySearch4 = Arrays.binarySearch(strArr, historicalNotification.getConversationId());
                    if (binarySearch4 >= 0) {
                        protoOutputStream.write(1120986464270L, binarySearch4 + 1);
                    } else {
                        Slog.w("NotifHistoryProto", "notification conversation id (" + historicalNotification.getConversationId() + ") not found in string cache");
                        protoOutputStream.write(1138166333453L, historicalNotification.getConversationId());
                    }
                }
                protoOutputStream.write(1120986464263L, historicalNotification.getUid());
                protoOutputStream.write(1120986464264L, historicalNotification.getUserId());
                protoOutputStream.write(1112396529673L, historicalNotification.getPostedTimeMs());
                protoOutputStream.write(1138166333450L, historicalNotification.getTitle());
                protoOutputStream.write(1138166333451L, historicalNotification.getText());
                protoOutputStream.write(1138166333455L, historicalNotification.getSbnKey());
                protoOutputStream.write(1120986464272L, historicalNotification.getType());
                protoOutputStream.write(1133871366161L, historicalNotification.getChecked());
                Uri uri = historicalNotification.getUri();
                if (uri != null) {
                    protoOutputStream.write(1138166333458L, uri.toString());
                } else {
                    protoOutputStream.write(1138166333458L, "null");
                }
                protoOutputStream.write(1112396529683L, historicalNotification.getWhen());
                writeIcon(protoOutputStream, historicalNotification);
            } catch (Exception e) {
                Slog.e("NotifHistoryProto", "Error writing notification -", e);
            }
        } finally {
            protoOutputStream.end(start);
        }
    }

    public static void read(InputStream inputStream, NotificationHistory notificationHistory, NotificationHistoryFilter notificationHistoryFilter) {
        ProtoInputStream protoInputStream = new ProtoInputStream(inputStream);
        List arrayList = new ArrayList();
        while (true) {
            int nextField = protoInputStream.nextField();
            if (nextField == -1) {
                break;
            }
            if (nextField == 1) {
                arrayList = readStringPool(protoInputStream);
            } else if (nextField == 3) {
                readNotification(protoInputStream, arrayList, notificationHistory, notificationHistoryFilter);
            }
        }
        if (notificationHistoryFilter.isFiltering()) {
            notificationHistory.poolStringsFromNotifications();
        } else {
            notificationHistory.addPooledStrings(arrayList);
        }
    }

    public static void write(OutputStream outputStream, NotificationHistory notificationHistory, int i) {
        ProtoOutputStream protoOutputStream = new ProtoOutputStream(outputStream);
        protoOutputStream.write(1120986464258L, i);
        writeStringPool(protoOutputStream, notificationHistory);
        List notificationsToWrite = notificationHistory.getNotificationsToWrite();
        int size = notificationsToWrite.size();
        for (int i2 = 0; i2 < size; i2++) {
            writeNotification(protoOutputStream, notificationHistory.getPooledStringsToWrite(), (NotificationHistory.HistoricalNotification) notificationsToWrite.get(i2));
        }
        protoOutputStream.flush();
    }
}
