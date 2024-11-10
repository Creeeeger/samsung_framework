package com.android.server.usage;

import android.app.usage.ConfigurationStats;
import android.app.usage.UsageEvents;
import android.app.usage.UsageStats;
import android.content.res.Configuration;
import android.util.ArrayMap;
import android.util.Log;
import com.android.internal.util.XmlUtils;
import com.android.server.usage.IntervalStats;
import java.io.IOException;
import java.net.ProtocolException;
import org.xmlpull.v1.XmlPullParser;

/* loaded from: classes3.dex */
public abstract class UsageStatsXmlV1 {
    public static void loadUsageStats(XmlPullParser xmlPullParser, IntervalStats intervalStats) {
        String attributeValue = xmlPullParser.getAttributeValue(null, "package");
        if (attributeValue == null) {
            throw new ProtocolException("no package attribute present");
        }
        UsageStats orCreateUsageStats = intervalStats.getOrCreateUsageStats(attributeValue);
        orCreateUsageStats.mLastTimeUsed = intervalStats.beginTime + XmlUtils.readLongAttribute(xmlPullParser, "lastTimeActive");
        try {
            orCreateUsageStats.mLastTimeVisible = intervalStats.beginTime + XmlUtils.readLongAttribute(xmlPullParser, "lastTimeVisible");
        } catch (IOException unused) {
            Log.i("UsageStatsXmlV1", "Failed to parse mLastTimeVisible");
        }
        try {
            orCreateUsageStats.mLastTimeForegroundServiceUsed = intervalStats.beginTime + XmlUtils.readLongAttribute(xmlPullParser, "lastTimeServiceUsed");
        } catch (IOException unused2) {
            Log.i("UsageStatsXmlV1", "Failed to parse mLastTimeForegroundServiceUsed");
        }
        orCreateUsageStats.mTotalTimeInForeground = XmlUtils.readLongAttribute(xmlPullParser, "timeActive");
        try {
            orCreateUsageStats.mTotalTimeVisible = XmlUtils.readLongAttribute(xmlPullParser, "timeVisible");
        } catch (IOException unused3) {
            Log.i("UsageStatsXmlV1", "Failed to parse mTotalTimeVisible");
        }
        try {
            orCreateUsageStats.mTotalTimeForegroundServiceUsed = XmlUtils.readLongAttribute(xmlPullParser, "timeServiceUsed");
        } catch (IOException unused4) {
            Log.i("UsageStatsXmlV1", "Failed to parse mTotalTimeForegroundServiceUsed");
        }
        orCreateUsageStats.mLastEvent = XmlUtils.readIntAttribute(xmlPullParser, "lastEvent");
        orCreateUsageStats.mAppLaunchCount = XmlUtils.readIntAttribute(xmlPullParser, "appLaunchCount", 0);
        while (true) {
            int next = xmlPullParser.next();
            if (next == 1) {
                return;
            }
            String name = xmlPullParser.getName();
            if (next == 3 && name.equals("package")) {
                return;
            }
            if (next == 2 && name.equals("chosen_action")) {
                loadChooserCounts(xmlPullParser, orCreateUsageStats, XmlUtils.readStringAttribute(xmlPullParser, "name"));
            }
        }
    }

    public static void loadCountAndTime(XmlPullParser xmlPullParser, IntervalStats.EventTracker eventTracker) {
        eventTracker.count = XmlUtils.readIntAttribute(xmlPullParser, "count", 0);
        eventTracker.duration = XmlUtils.readLongAttribute(xmlPullParser, "time", 0L);
        XmlUtils.skipCurrentTag(xmlPullParser);
    }

    public static void loadChooserCounts(XmlPullParser xmlPullParser, UsageStats usageStats, String str) {
        if (str == null) {
            return;
        }
        if (usageStats.mChooserCounts == null) {
            usageStats.mChooserCounts = new ArrayMap();
        }
        if (!usageStats.mChooserCounts.containsKey(str)) {
            usageStats.mChooserCounts.put(str, new ArrayMap());
        }
        while (true) {
            int next = xmlPullParser.next();
            if (next == 1) {
                return;
            }
            String name = xmlPullParser.getName();
            if (next == 3 && name.equals("chosen_action")) {
                return;
            }
            if (next == 2 && name.equals("category")) {
                ((ArrayMap) usageStats.mChooserCounts.get(str)).put(XmlUtils.readStringAttribute(xmlPullParser, "name"), Integer.valueOf(XmlUtils.readIntAttribute(xmlPullParser, "count")));
            }
        }
    }

    public static void loadConfigStats(XmlPullParser xmlPullParser, IntervalStats intervalStats) {
        Configuration configuration = new Configuration();
        Configuration.readXmlAttrs(xmlPullParser, configuration);
        ConfigurationStats orCreateConfigurationStats = intervalStats.getOrCreateConfigurationStats(configuration);
        orCreateConfigurationStats.mLastTimeActive = intervalStats.beginTime + XmlUtils.readLongAttribute(xmlPullParser, "lastTimeActive");
        orCreateConfigurationStats.mTotalTimeActive = XmlUtils.readLongAttribute(xmlPullParser, "timeActive");
        orCreateConfigurationStats.mActivationCount = XmlUtils.readIntAttribute(xmlPullParser, "count");
        if (XmlUtils.readBooleanAttribute(xmlPullParser, "active")) {
            intervalStats.activeConfiguration = orCreateConfigurationStats.mConfiguration;
        }
    }

    public static void loadEvent(XmlPullParser xmlPullParser, IntervalStats intervalStats) {
        String readStringAttribute = XmlUtils.readStringAttribute(xmlPullParser, "package");
        if (readStringAttribute == null) {
            throw new ProtocolException("no package attribute present");
        }
        UsageEvents.Event buildEvent = intervalStats.buildEvent(readStringAttribute, XmlUtils.readStringAttribute(xmlPullParser, "class"));
        buildEvent.mFlags = XmlUtils.readIntAttribute(xmlPullParser, "flags", 0);
        buildEvent.mTimeStamp = intervalStats.beginTime + XmlUtils.readLongAttribute(xmlPullParser, "time");
        buildEvent.mEventType = XmlUtils.readIntAttribute(xmlPullParser, "type");
        try {
            buildEvent.mInstanceId = XmlUtils.readIntAttribute(xmlPullParser, "instanceId");
        } catch (IOException unused) {
            Log.i("UsageStatsXmlV1", "Failed to parse mInstanceId");
        }
        int i = buildEvent.mEventType;
        if (i != 5) {
            if (i == 8) {
                String readStringAttribute2 = XmlUtils.readStringAttribute(xmlPullParser, "shortcutId");
                buildEvent.mShortcutId = readStringAttribute2 != null ? readStringAttribute2.intern() : null;
            } else if (i == 11) {
                buildEvent.mBucketAndReason = XmlUtils.readIntAttribute(xmlPullParser, "standbyBucket", 0);
            } else if (i == 12) {
                String readStringAttribute3 = XmlUtils.readStringAttribute(xmlPullParser, "notificationChannel");
                buildEvent.mNotificationChannelId = readStringAttribute3 != null ? readStringAttribute3.intern() : null;
            }
        } else {
            Configuration configuration = new Configuration();
            buildEvent.mConfiguration = configuration;
            Configuration.readXmlAttrs(xmlPullParser, configuration);
        }
        intervalStats.addEvent(buildEvent);
    }

    /* JADX WARN: Code restructure failed: missing block: B:63:0x00a5, code lost:
    
        if (r1.equals("keyguard-hidden") == false) goto L21;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public static void read(org.xmlpull.v1.XmlPullParser r7, com.android.server.usage.IntervalStats r8) {
        /*
            Method dump skipped, instructions count: 272
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: com.android.server.usage.UsageStatsXmlV1.read(org.xmlpull.v1.XmlPullParser, com.android.server.usage.IntervalStats):void");
    }
}
