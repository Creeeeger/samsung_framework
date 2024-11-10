package com.android.server.am;

import android.app.AppGlobals;
import android.app.ContentProviderHolder;
import android.app.IApplicationThread;
import android.content.AttributionSource;
import android.content.ComponentName;
import android.content.ContentProvider;
import android.content.Context;
import android.content.IContentProvider;
import android.content.Intent;
import android.content.pm.ApplicationInfo;
import android.content.pm.PathPermission;
import android.content.pm.ProviderInfo;
import android.content.pm.UserInfo;
import android.database.ContentObserver;
import android.net.Uri;
import android.os.Binder;
import android.os.Build;
import android.os.Bundle;
import android.os.IBinder;
import android.os.IInstalld;
import android.os.Process;
import android.os.RemoteCallback;
import android.os.RemoteException;
import android.os.SystemClock;
import android.os.Trace;
import android.os.UserHandle;
import android.provider.Settings;
import android.util.ArrayMap;
import android.util.Log;
import android.util.Slog;
import android.util.SparseArray;
import com.android.internal.os.BackgroundThread;
import com.android.internal.os.TimeoutRecord;
import com.android.internal.util.ArrayUtils;
import com.android.internal.util.FrameworkStatsLog;
import com.android.server.LocalManagerRegistry;
import com.android.server.LocalServices;
import com.android.server.RescueParty;
import com.android.server.am.ActivityManagerService;
import com.android.server.enterprise.vpn.knoxvpn.KnoxVpnFirewallHelper;
import com.android.server.pm.UserManagerInternal;
import com.android.server.sdksandbox.SdkSandboxManagerLocal;
import java.io.FileDescriptor;
import java.io.PrintWriter;
import java.util.ArrayList;
import java.util.List;
import java.util.function.Consumer;
import java.util.function.Function;

/* loaded from: classes.dex */
public class ContentProviderHelper {
    public static final int[] PROCESS_STATE_STATS_FORMAT = {32, FrameworkStatsLog.PACKAGE_MANAGER_SNAPSHOT_REPORTED, 10272};
    public final ArrayList mLaunchingProviders = new ArrayList();
    public final long[] mProcessStateStatsLongs = new long[1];
    public final ProviderMap mProviderMap;
    public final ActivityManagerService mService;
    public boolean mSystemProvidersInstalled;

    public ContentProviderHelper(ActivityManagerService activityManagerService, boolean z) {
        this.mService = activityManagerService;
        this.mProviderMap = z ? new ProviderMap(activityManagerService) : null;
    }

    public ProviderMap getProviderMap() {
        return this.mProviderMap;
    }

    public ContentProviderHolder getContentProvider(IApplicationThread iApplicationThread, String str, String str2, int i, boolean z) {
        this.mService.enforceNotIsolatedCaller("getContentProvider");
        if (iApplicationThread == null) {
            String str3 = "null IApplicationThread when getting content provider " + str2;
            Slog.w("ContentProviderHelper", str3);
            throw new SecurityException(str3);
        }
        int callingUid = Binder.getCallingUid();
        if (str != null && this.mService.mAppOpsService.checkPackage(callingUid, str) != 0) {
            throw new SecurityException("Given calling package " + str + " does not match caller's uid " + callingUid);
        }
        return getContentProviderImpl(iApplicationThread, str2, null, callingUid, str, null, z, i);
    }

    public ContentProviderHolder getContentProviderExternal(String str, int i, IBinder iBinder, String str2) {
        this.mService.enforceCallingPermission("android.permission.ACCESS_CONTENT_PROVIDERS_EXTERNALLY", "Do not have permission in call getContentProviderExternal()");
        return getContentProviderExternalUnchecked(str, iBinder, Binder.getCallingUid(), str2 != null ? str2 : "*external*", this.mService.mUserController.handleIncomingUser(Binder.getCallingPid(), Binder.getCallingUid(), i, false, 2, "getContentProvider", null));
    }

    public ContentProviderHolder getContentProviderExternalUnchecked(String str, IBinder iBinder, int i, String str2, int i2) {
        return getContentProviderImpl(null, str, iBinder, i, null, str2, true, i2);
    }

    public final ContentProviderHolder getContentProviderImpl(IApplicationThread iApplicationThread, String str, IBinder iBinder, int i, String str2, String str3, boolean z, int i2) {
        return getContentProviderImpl(iApplicationThread, str, iBinder, i, str2, str3, z, i2, -1);
    }

    /* JADX WARN: Code restructure failed: missing block: B:130:0x0383, code lost:
    
        if (r15 == 1000) goto L164;
     */
    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:119:0x0356  */
    /* JADX WARN: Removed duplicated region for block: B:141:0x03ab A[Catch: all -> 0x0a52, TRY_ENTER, TRY_LEAVE, TryCatch #23 {all -> 0x0a52, blocks: (B:111:0x02ef, B:112:0x02f2, B:117:0x032e, B:121:0x0358, B:124:0x0363, B:125:0x036f, B:127:0x0375, B:135:0x0391, B:138:0x039b, B:141:0x03ab, B:145:0x03b2, B:147:0x03c2, B:150:0x03ca, B:155:0x03de, B:158:0x03f4, B:160:0x0413, B:163:0x041f, B:164:0x0426, B:165:0x0427, B:177:0x045f, B:179:0x0469, B:180:0x04a6, B:184:0x04af, B:186:0x04b3, B:188:0x04bf, B:190:0x04c3, B:192:0x04e2, B:193:0x04e8, B:195:0x0508, B:198:0x0511, B:200:0x052c, B:206:0x053e, B:208:0x0550, B:218:0x058c, B:219:0x058f, B:223:0x05aa, B:224:0x05c7, B:226:0x05ce, B:228:0x05d4, B:229:0x05dd, B:233:0x05e3, B:235:0x05ec, B:237:0x05f5, B:241:0x05fa, B:272:0x07e5, B:273:0x07f8, B:275:0x07ff, B:276:0x0806, B:278:0x0832, B:279:0x0837, B:280:0x0840, B:282:0x0846, B:286:0x0874, B:288:0x088d, B:296:0x08dd, B:305:0x0929, B:306:0x0931, B:312:0x0939, B:314:0x093d, B:398:0x07bd, B:399:0x07c0, B:411:0x07ea, B:412:0x07ee, B:416:0x05b9, B:420:0x05b0, B:421:0x05b4, B:432:0x0863, B:435:0x03c8, B:489:0x0a4d, B:455:0x0340, B:456:0x0344, B:167:0x0428, B:169:0x042c, B:171:0x0434, B:174:0x0440, B:175:0x045d, B:176:0x045e, B:243:0x05fe, B:245:0x060a, B:247:0x0617, B:409:0x0630, B:248:0x0652, B:250:0x0665, B:252:0x066b, B:255:0x0673, B:257:0x067d, B:259:0x0687, B:260:0x06af, B:262:0x06b7, B:263:0x06d6, B:265:0x06dc, B:269:0x068d, B:270:0x06fd, B:271:0x07de, B:388:0x072d, B:391:0x0745, B:395:0x075b, B:397:0x078a, B:403:0x07c8, B:212:0x0556, B:215:0x0569, B:217:0x0574, B:222:0x0595, B:290:0x088e, B:292:0x0892, B:294:0x0896, B:295:0x08dc, B:300:0x08e5, B:302:0x0910, B:303:0x0912, B:304:0x0928), top: B:3:0x0012, inners: #0, #5, #9, #11 }] */
    /* JADX WARN: Removed duplicated region for block: B:144:0x03b1  */
    /* JADX WARN: Removed duplicated region for block: B:154:0x03db  */
    /* JADX WARN: Removed duplicated region for block: B:157:0x03ef  */
    /* JADX WARN: Removed duplicated region for block: B:166:0x0428 A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:206:0x053e A[Catch: all -> 0x0a52, TryCatch #23 {all -> 0x0a52, blocks: (B:111:0x02ef, B:112:0x02f2, B:117:0x032e, B:121:0x0358, B:124:0x0363, B:125:0x036f, B:127:0x0375, B:135:0x0391, B:138:0x039b, B:141:0x03ab, B:145:0x03b2, B:147:0x03c2, B:150:0x03ca, B:155:0x03de, B:158:0x03f4, B:160:0x0413, B:163:0x041f, B:164:0x0426, B:165:0x0427, B:177:0x045f, B:179:0x0469, B:180:0x04a6, B:184:0x04af, B:186:0x04b3, B:188:0x04bf, B:190:0x04c3, B:192:0x04e2, B:193:0x04e8, B:195:0x0508, B:198:0x0511, B:200:0x052c, B:206:0x053e, B:208:0x0550, B:218:0x058c, B:219:0x058f, B:223:0x05aa, B:224:0x05c7, B:226:0x05ce, B:228:0x05d4, B:229:0x05dd, B:233:0x05e3, B:235:0x05ec, B:237:0x05f5, B:241:0x05fa, B:272:0x07e5, B:273:0x07f8, B:275:0x07ff, B:276:0x0806, B:278:0x0832, B:279:0x0837, B:280:0x0840, B:282:0x0846, B:286:0x0874, B:288:0x088d, B:296:0x08dd, B:305:0x0929, B:306:0x0931, B:312:0x0939, B:314:0x093d, B:398:0x07bd, B:399:0x07c0, B:411:0x07ea, B:412:0x07ee, B:416:0x05b9, B:420:0x05b0, B:421:0x05b4, B:432:0x0863, B:435:0x03c8, B:489:0x0a4d, B:455:0x0340, B:456:0x0344, B:167:0x0428, B:169:0x042c, B:171:0x0434, B:174:0x0440, B:175:0x045d, B:176:0x045e, B:243:0x05fe, B:245:0x060a, B:247:0x0617, B:409:0x0630, B:248:0x0652, B:250:0x0665, B:252:0x066b, B:255:0x0673, B:257:0x067d, B:259:0x0687, B:260:0x06af, B:262:0x06b7, B:263:0x06d6, B:265:0x06dc, B:269:0x068d, B:270:0x06fd, B:271:0x07de, B:388:0x072d, B:391:0x0745, B:395:0x075b, B:397:0x078a, B:403:0x07c8, B:212:0x0556, B:215:0x0569, B:217:0x0574, B:222:0x0595, B:290:0x088e, B:292:0x0892, B:294:0x0896, B:295:0x08dc, B:300:0x08e5, B:302:0x0910, B:303:0x0912, B:304:0x0928), top: B:3:0x0012, inners: #0, #5, #9, #11 }] */
    /* JADX WARN: Removed duplicated region for block: B:226:0x05ce A[Catch: all -> 0x0a52, TryCatch #23 {all -> 0x0a52, blocks: (B:111:0x02ef, B:112:0x02f2, B:117:0x032e, B:121:0x0358, B:124:0x0363, B:125:0x036f, B:127:0x0375, B:135:0x0391, B:138:0x039b, B:141:0x03ab, B:145:0x03b2, B:147:0x03c2, B:150:0x03ca, B:155:0x03de, B:158:0x03f4, B:160:0x0413, B:163:0x041f, B:164:0x0426, B:165:0x0427, B:177:0x045f, B:179:0x0469, B:180:0x04a6, B:184:0x04af, B:186:0x04b3, B:188:0x04bf, B:190:0x04c3, B:192:0x04e2, B:193:0x04e8, B:195:0x0508, B:198:0x0511, B:200:0x052c, B:206:0x053e, B:208:0x0550, B:218:0x058c, B:219:0x058f, B:223:0x05aa, B:224:0x05c7, B:226:0x05ce, B:228:0x05d4, B:229:0x05dd, B:233:0x05e3, B:235:0x05ec, B:237:0x05f5, B:241:0x05fa, B:272:0x07e5, B:273:0x07f8, B:275:0x07ff, B:276:0x0806, B:278:0x0832, B:279:0x0837, B:280:0x0840, B:282:0x0846, B:286:0x0874, B:288:0x088d, B:296:0x08dd, B:305:0x0929, B:306:0x0931, B:312:0x0939, B:314:0x093d, B:398:0x07bd, B:399:0x07c0, B:411:0x07ea, B:412:0x07ee, B:416:0x05b9, B:420:0x05b0, B:421:0x05b4, B:432:0x0863, B:435:0x03c8, B:489:0x0a4d, B:455:0x0340, B:456:0x0344, B:167:0x0428, B:169:0x042c, B:171:0x0434, B:174:0x0440, B:175:0x045d, B:176:0x045e, B:243:0x05fe, B:245:0x060a, B:247:0x0617, B:409:0x0630, B:248:0x0652, B:250:0x0665, B:252:0x066b, B:255:0x0673, B:257:0x067d, B:259:0x0687, B:260:0x06af, B:262:0x06b7, B:263:0x06d6, B:265:0x06dc, B:269:0x068d, B:270:0x06fd, B:271:0x07de, B:388:0x072d, B:391:0x0745, B:395:0x075b, B:397:0x078a, B:403:0x07c8, B:212:0x0556, B:215:0x0569, B:217:0x0574, B:222:0x0595, B:290:0x088e, B:292:0x0892, B:294:0x0896, B:295:0x08dc, B:300:0x08e5, B:302:0x0910, B:303:0x0912, B:304:0x0928), top: B:3:0x0012, inners: #0, #5, #9, #11 }] */
    /* JADX WARN: Removed duplicated region for block: B:235:0x05ec A[Catch: all -> 0x0a52, TryCatch #23 {all -> 0x0a52, blocks: (B:111:0x02ef, B:112:0x02f2, B:117:0x032e, B:121:0x0358, B:124:0x0363, B:125:0x036f, B:127:0x0375, B:135:0x0391, B:138:0x039b, B:141:0x03ab, B:145:0x03b2, B:147:0x03c2, B:150:0x03ca, B:155:0x03de, B:158:0x03f4, B:160:0x0413, B:163:0x041f, B:164:0x0426, B:165:0x0427, B:177:0x045f, B:179:0x0469, B:180:0x04a6, B:184:0x04af, B:186:0x04b3, B:188:0x04bf, B:190:0x04c3, B:192:0x04e2, B:193:0x04e8, B:195:0x0508, B:198:0x0511, B:200:0x052c, B:206:0x053e, B:208:0x0550, B:218:0x058c, B:219:0x058f, B:223:0x05aa, B:224:0x05c7, B:226:0x05ce, B:228:0x05d4, B:229:0x05dd, B:233:0x05e3, B:235:0x05ec, B:237:0x05f5, B:241:0x05fa, B:272:0x07e5, B:273:0x07f8, B:275:0x07ff, B:276:0x0806, B:278:0x0832, B:279:0x0837, B:280:0x0840, B:282:0x0846, B:286:0x0874, B:288:0x088d, B:296:0x08dd, B:305:0x0929, B:306:0x0931, B:312:0x0939, B:314:0x093d, B:398:0x07bd, B:399:0x07c0, B:411:0x07ea, B:412:0x07ee, B:416:0x05b9, B:420:0x05b0, B:421:0x05b4, B:432:0x0863, B:435:0x03c8, B:489:0x0a4d, B:455:0x0340, B:456:0x0344, B:167:0x0428, B:169:0x042c, B:171:0x0434, B:174:0x0440, B:175:0x045d, B:176:0x045e, B:243:0x05fe, B:245:0x060a, B:247:0x0617, B:409:0x0630, B:248:0x0652, B:250:0x0665, B:252:0x066b, B:255:0x0673, B:257:0x067d, B:259:0x0687, B:260:0x06af, B:262:0x06b7, B:263:0x06d6, B:265:0x06dc, B:269:0x068d, B:270:0x06fd, B:271:0x07de, B:388:0x072d, B:391:0x0745, B:395:0x075b, B:397:0x078a, B:403:0x07c8, B:212:0x0556, B:215:0x0569, B:217:0x0574, B:222:0x0595, B:290:0x088e, B:292:0x0892, B:294:0x0896, B:295:0x08dc, B:300:0x08e5, B:302:0x0910, B:303:0x0912, B:304:0x0928), top: B:3:0x0012, inners: #0, #5, #9, #11 }] */
    /* JADX WARN: Removed duplicated region for block: B:241:0x05fa A[Catch: all -> 0x0a52, TRY_LEAVE, TryCatch #23 {all -> 0x0a52, blocks: (B:111:0x02ef, B:112:0x02f2, B:117:0x032e, B:121:0x0358, B:124:0x0363, B:125:0x036f, B:127:0x0375, B:135:0x0391, B:138:0x039b, B:141:0x03ab, B:145:0x03b2, B:147:0x03c2, B:150:0x03ca, B:155:0x03de, B:158:0x03f4, B:160:0x0413, B:163:0x041f, B:164:0x0426, B:165:0x0427, B:177:0x045f, B:179:0x0469, B:180:0x04a6, B:184:0x04af, B:186:0x04b3, B:188:0x04bf, B:190:0x04c3, B:192:0x04e2, B:193:0x04e8, B:195:0x0508, B:198:0x0511, B:200:0x052c, B:206:0x053e, B:208:0x0550, B:218:0x058c, B:219:0x058f, B:223:0x05aa, B:224:0x05c7, B:226:0x05ce, B:228:0x05d4, B:229:0x05dd, B:233:0x05e3, B:235:0x05ec, B:237:0x05f5, B:241:0x05fa, B:272:0x07e5, B:273:0x07f8, B:275:0x07ff, B:276:0x0806, B:278:0x0832, B:279:0x0837, B:280:0x0840, B:282:0x0846, B:286:0x0874, B:288:0x088d, B:296:0x08dd, B:305:0x0929, B:306:0x0931, B:312:0x0939, B:314:0x093d, B:398:0x07bd, B:399:0x07c0, B:411:0x07ea, B:412:0x07ee, B:416:0x05b9, B:420:0x05b0, B:421:0x05b4, B:432:0x0863, B:435:0x03c8, B:489:0x0a4d, B:455:0x0340, B:456:0x0344, B:167:0x0428, B:169:0x042c, B:171:0x0434, B:174:0x0440, B:175:0x045d, B:176:0x045e, B:243:0x05fe, B:245:0x060a, B:247:0x0617, B:409:0x0630, B:248:0x0652, B:250:0x0665, B:252:0x066b, B:255:0x0673, B:257:0x067d, B:259:0x0687, B:260:0x06af, B:262:0x06b7, B:263:0x06d6, B:265:0x06dc, B:269:0x068d, B:270:0x06fd, B:271:0x07de, B:388:0x072d, B:391:0x0745, B:395:0x075b, B:397:0x078a, B:403:0x07c8, B:212:0x0556, B:215:0x0569, B:217:0x0574, B:222:0x0595, B:290:0x088e, B:292:0x0892, B:294:0x0896, B:295:0x08dc, B:300:0x08e5, B:302:0x0910, B:303:0x0912, B:304:0x0928), top: B:3:0x0012, inners: #0, #5, #9, #11 }] */
    /* JADX WARN: Removed duplicated region for block: B:275:0x07ff A[Catch: all -> 0x0a52, TryCatch #23 {all -> 0x0a52, blocks: (B:111:0x02ef, B:112:0x02f2, B:117:0x032e, B:121:0x0358, B:124:0x0363, B:125:0x036f, B:127:0x0375, B:135:0x0391, B:138:0x039b, B:141:0x03ab, B:145:0x03b2, B:147:0x03c2, B:150:0x03ca, B:155:0x03de, B:158:0x03f4, B:160:0x0413, B:163:0x041f, B:164:0x0426, B:165:0x0427, B:177:0x045f, B:179:0x0469, B:180:0x04a6, B:184:0x04af, B:186:0x04b3, B:188:0x04bf, B:190:0x04c3, B:192:0x04e2, B:193:0x04e8, B:195:0x0508, B:198:0x0511, B:200:0x052c, B:206:0x053e, B:208:0x0550, B:218:0x058c, B:219:0x058f, B:223:0x05aa, B:224:0x05c7, B:226:0x05ce, B:228:0x05d4, B:229:0x05dd, B:233:0x05e3, B:235:0x05ec, B:237:0x05f5, B:241:0x05fa, B:272:0x07e5, B:273:0x07f8, B:275:0x07ff, B:276:0x0806, B:278:0x0832, B:279:0x0837, B:280:0x0840, B:282:0x0846, B:286:0x0874, B:288:0x088d, B:296:0x08dd, B:305:0x0929, B:306:0x0931, B:312:0x0939, B:314:0x093d, B:398:0x07bd, B:399:0x07c0, B:411:0x07ea, B:412:0x07ee, B:416:0x05b9, B:420:0x05b0, B:421:0x05b4, B:432:0x0863, B:435:0x03c8, B:489:0x0a4d, B:455:0x0340, B:456:0x0344, B:167:0x0428, B:169:0x042c, B:171:0x0434, B:174:0x0440, B:175:0x045d, B:176:0x045e, B:243:0x05fe, B:245:0x060a, B:247:0x0617, B:409:0x0630, B:248:0x0652, B:250:0x0665, B:252:0x066b, B:255:0x0673, B:257:0x067d, B:259:0x0687, B:260:0x06af, B:262:0x06b7, B:263:0x06d6, B:265:0x06dc, B:269:0x068d, B:270:0x06fd, B:271:0x07de, B:388:0x072d, B:391:0x0745, B:395:0x075b, B:397:0x078a, B:403:0x07c8, B:212:0x0556, B:215:0x0569, B:217:0x0574, B:222:0x0595, B:290:0x088e, B:292:0x0892, B:294:0x0896, B:295:0x08dc, B:300:0x08e5, B:302:0x0910, B:303:0x0912, B:304:0x0928), top: B:3:0x0012, inners: #0, #5, #9, #11 }] */
    /* JADX WARN: Removed duplicated region for block: B:278:0x0832 A[Catch: all -> 0x0a52, TryCatch #23 {all -> 0x0a52, blocks: (B:111:0x02ef, B:112:0x02f2, B:117:0x032e, B:121:0x0358, B:124:0x0363, B:125:0x036f, B:127:0x0375, B:135:0x0391, B:138:0x039b, B:141:0x03ab, B:145:0x03b2, B:147:0x03c2, B:150:0x03ca, B:155:0x03de, B:158:0x03f4, B:160:0x0413, B:163:0x041f, B:164:0x0426, B:165:0x0427, B:177:0x045f, B:179:0x0469, B:180:0x04a6, B:184:0x04af, B:186:0x04b3, B:188:0x04bf, B:190:0x04c3, B:192:0x04e2, B:193:0x04e8, B:195:0x0508, B:198:0x0511, B:200:0x052c, B:206:0x053e, B:208:0x0550, B:218:0x058c, B:219:0x058f, B:223:0x05aa, B:224:0x05c7, B:226:0x05ce, B:228:0x05d4, B:229:0x05dd, B:233:0x05e3, B:235:0x05ec, B:237:0x05f5, B:241:0x05fa, B:272:0x07e5, B:273:0x07f8, B:275:0x07ff, B:276:0x0806, B:278:0x0832, B:279:0x0837, B:280:0x0840, B:282:0x0846, B:286:0x0874, B:288:0x088d, B:296:0x08dd, B:305:0x0929, B:306:0x0931, B:312:0x0939, B:314:0x093d, B:398:0x07bd, B:399:0x07c0, B:411:0x07ea, B:412:0x07ee, B:416:0x05b9, B:420:0x05b0, B:421:0x05b4, B:432:0x0863, B:435:0x03c8, B:489:0x0a4d, B:455:0x0340, B:456:0x0344, B:167:0x0428, B:169:0x042c, B:171:0x0434, B:174:0x0440, B:175:0x045d, B:176:0x045e, B:243:0x05fe, B:245:0x060a, B:247:0x0617, B:409:0x0630, B:248:0x0652, B:250:0x0665, B:252:0x066b, B:255:0x0673, B:257:0x067d, B:259:0x0687, B:260:0x06af, B:262:0x06b7, B:263:0x06d6, B:265:0x06dc, B:269:0x068d, B:270:0x06fd, B:271:0x07de, B:388:0x072d, B:391:0x0745, B:395:0x075b, B:397:0x078a, B:403:0x07c8, B:212:0x0556, B:215:0x0569, B:217:0x0574, B:222:0x0595, B:290:0x088e, B:292:0x0892, B:294:0x0896, B:295:0x08dc, B:300:0x08e5, B:302:0x0910, B:303:0x0912, B:304:0x0928), top: B:3:0x0012, inners: #0, #5, #9, #11 }] */
    /* JADX WARN: Removed duplicated region for block: B:282:0x0846 A[Catch: all -> 0x0a52, TRY_LEAVE, TryCatch #23 {all -> 0x0a52, blocks: (B:111:0x02ef, B:112:0x02f2, B:117:0x032e, B:121:0x0358, B:124:0x0363, B:125:0x036f, B:127:0x0375, B:135:0x0391, B:138:0x039b, B:141:0x03ab, B:145:0x03b2, B:147:0x03c2, B:150:0x03ca, B:155:0x03de, B:158:0x03f4, B:160:0x0413, B:163:0x041f, B:164:0x0426, B:165:0x0427, B:177:0x045f, B:179:0x0469, B:180:0x04a6, B:184:0x04af, B:186:0x04b3, B:188:0x04bf, B:190:0x04c3, B:192:0x04e2, B:193:0x04e8, B:195:0x0508, B:198:0x0511, B:200:0x052c, B:206:0x053e, B:208:0x0550, B:218:0x058c, B:219:0x058f, B:223:0x05aa, B:224:0x05c7, B:226:0x05ce, B:228:0x05d4, B:229:0x05dd, B:233:0x05e3, B:235:0x05ec, B:237:0x05f5, B:241:0x05fa, B:272:0x07e5, B:273:0x07f8, B:275:0x07ff, B:276:0x0806, B:278:0x0832, B:279:0x0837, B:280:0x0840, B:282:0x0846, B:286:0x0874, B:288:0x088d, B:296:0x08dd, B:305:0x0929, B:306:0x0931, B:312:0x0939, B:314:0x093d, B:398:0x07bd, B:399:0x07c0, B:411:0x07ea, B:412:0x07ee, B:416:0x05b9, B:420:0x05b0, B:421:0x05b4, B:432:0x0863, B:435:0x03c8, B:489:0x0a4d, B:455:0x0340, B:456:0x0344, B:167:0x0428, B:169:0x042c, B:171:0x0434, B:174:0x0440, B:175:0x045d, B:176:0x045e, B:243:0x05fe, B:245:0x060a, B:247:0x0617, B:409:0x0630, B:248:0x0652, B:250:0x0665, B:252:0x066b, B:255:0x0673, B:257:0x067d, B:259:0x0687, B:260:0x06af, B:262:0x06b7, B:263:0x06d6, B:265:0x06dc, B:269:0x068d, B:270:0x06fd, B:271:0x07de, B:388:0x072d, B:391:0x0745, B:395:0x075b, B:397:0x078a, B:403:0x07c8, B:212:0x0556, B:215:0x0569, B:217:0x0574, B:222:0x0595, B:290:0x088e, B:292:0x0892, B:294:0x0896, B:295:0x08dc, B:300:0x08e5, B:302:0x0910, B:303:0x0912, B:304:0x0928), top: B:3:0x0012, inners: #0, #5, #9, #11 }] */
    /* JADX WARN: Removed duplicated region for block: B:288:0x088d A[Catch: all -> 0x0a52, TRY_LEAVE, TryCatch #23 {all -> 0x0a52, blocks: (B:111:0x02ef, B:112:0x02f2, B:117:0x032e, B:121:0x0358, B:124:0x0363, B:125:0x036f, B:127:0x0375, B:135:0x0391, B:138:0x039b, B:141:0x03ab, B:145:0x03b2, B:147:0x03c2, B:150:0x03ca, B:155:0x03de, B:158:0x03f4, B:160:0x0413, B:163:0x041f, B:164:0x0426, B:165:0x0427, B:177:0x045f, B:179:0x0469, B:180:0x04a6, B:184:0x04af, B:186:0x04b3, B:188:0x04bf, B:190:0x04c3, B:192:0x04e2, B:193:0x04e8, B:195:0x0508, B:198:0x0511, B:200:0x052c, B:206:0x053e, B:208:0x0550, B:218:0x058c, B:219:0x058f, B:223:0x05aa, B:224:0x05c7, B:226:0x05ce, B:228:0x05d4, B:229:0x05dd, B:233:0x05e3, B:235:0x05ec, B:237:0x05f5, B:241:0x05fa, B:272:0x07e5, B:273:0x07f8, B:275:0x07ff, B:276:0x0806, B:278:0x0832, B:279:0x0837, B:280:0x0840, B:282:0x0846, B:286:0x0874, B:288:0x088d, B:296:0x08dd, B:305:0x0929, B:306:0x0931, B:312:0x0939, B:314:0x093d, B:398:0x07bd, B:399:0x07c0, B:411:0x07ea, B:412:0x07ee, B:416:0x05b9, B:420:0x05b0, B:421:0x05b4, B:432:0x0863, B:435:0x03c8, B:489:0x0a4d, B:455:0x0340, B:456:0x0344, B:167:0x0428, B:169:0x042c, B:171:0x0434, B:174:0x0440, B:175:0x045d, B:176:0x045e, B:243:0x05fe, B:245:0x060a, B:247:0x0617, B:409:0x0630, B:248:0x0652, B:250:0x0665, B:252:0x066b, B:255:0x0673, B:257:0x067d, B:259:0x0687, B:260:0x06af, B:262:0x06b7, B:263:0x06d6, B:265:0x06dc, B:269:0x068d, B:270:0x06fd, B:271:0x07de, B:388:0x072d, B:391:0x0745, B:395:0x075b, B:397:0x078a, B:403:0x07c8, B:212:0x0556, B:215:0x0569, B:217:0x0574, B:222:0x0595, B:290:0x088e, B:292:0x0892, B:294:0x0896, B:295:0x08dc, B:300:0x08e5, B:302:0x0910, B:303:0x0912, B:304:0x0928), top: B:3:0x0012, inners: #0, #5, #9, #11 }] */
    /* JADX WARN: Removed duplicated region for block: B:313:0x093a  */
    /* JADX WARN: Removed duplicated region for block: B:387:0x0836  */
    /* JADX WARN: Removed duplicated region for block: B:413:0x07ef  */
    /* JADX WARN: Removed duplicated region for block: B:41:0x00f6 A[Catch: all -> 0x004d, TryCatch #22 {all -> 0x004d, blocks: (B:494:0x0018, B:11:0x0059, B:12:0x005d, B:20:0x0082, B:30:0x00a0, B:32:0x00a8, B:34:0x00bc, B:37:0x00c5, B:41:0x00f6, B:43:0x00fa, B:46:0x0103, B:48:0x010b, B:50:0x0113, B:52:0x013f, B:58:0x0154, B:60:0x015e, B:62:0x0162, B:64:0x0181, B:65:0x018a, B:67:0x01a0, B:68:0x01a9, B:70:0x01b3, B:79:0x01be, B:81:0x01c4, B:82:0x01fb, B:87:0x0205, B:90:0x020f, B:92:0x0215, B:471:0x00c3, B:472:0x00d4, B:475:0x00dc, B:486:0x006c, B:497:0x0022, B:498:0x004c, B:14:0x005e, B:15:0x0066), top: B:493:0x0018, inners: #7 }] */
    /* JADX WARN: Removed duplicated region for block: B:423:0x05bd  */
    /* JADX WARN: Removed duplicated region for block: B:433:0x03f2  */
    /* JADX WARN: Removed duplicated region for block: B:434:0x03dd  */
    /* JADX WARN: Removed duplicated region for block: B:450:0x0864  */
    /* JADX WARN: Removed duplicated region for block: B:465:0x0345  */
    /* JADX WARN: Removed duplicated region for block: B:466:0x0148  */
    /* JADX WARN: Removed duplicated region for block: B:52:0x013f A[Catch: all -> 0x004d, TRY_LEAVE, TryCatch #22 {all -> 0x004d, blocks: (B:494:0x0018, B:11:0x0059, B:12:0x005d, B:20:0x0082, B:30:0x00a0, B:32:0x00a8, B:34:0x00bc, B:37:0x00c5, B:41:0x00f6, B:43:0x00fa, B:46:0x0103, B:48:0x010b, B:50:0x0113, B:52:0x013f, B:58:0x0154, B:60:0x015e, B:62:0x0162, B:64:0x0181, B:65:0x018a, B:67:0x01a0, B:68:0x01a9, B:70:0x01b3, B:79:0x01be, B:81:0x01c4, B:82:0x01fb, B:87:0x0205, B:90:0x020f, B:92:0x0215, B:471:0x00c3, B:472:0x00d4, B:475:0x00dc, B:486:0x006c, B:497:0x0022, B:498:0x004c, B:14:0x005e, B:15:0x0066), top: B:493:0x0018, inners: #7 }] */
    /* JADX WARN: Removed duplicated region for block: B:55:0x014c A[Catch: all -> 0x0a49, TRY_ENTER, TRY_LEAVE, TryCatch #20 {all -> 0x0a49, blocks: (B:5:0x0012, B:17:0x006e, B:23:0x008b, B:55:0x014c, B:95:0x0220, B:480:0x0096), top: B:4:0x0012 }] */
    /* JADX WARN: Type inference failed for: r1v10, types: [boolean] */
    /* JADX WARN: Type inference failed for: r1v12 */
    /* JADX WARN: Type inference failed for: r1v13 */
    /* JADX WARN: Type inference failed for: r1v159 */
    /* JADX WARN: Type inference failed for: r1v9 */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public final android.app.ContentProviderHolder getContentProviderImpl(android.app.IApplicationThread r56, java.lang.String r57, android.os.IBinder r58, int r59, java.lang.String r60, java.lang.String r61, boolean r62, int r63, int r64) {
        /*
            Method dump skipped, instructions count: 2644
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: com.android.server.am.ContentProviderHelper.getContentProviderImpl(android.app.IApplicationThread, java.lang.String, android.os.IBinder, int, java.lang.String, java.lang.String, boolean, int, int):android.app.ContentProviderHolder");
    }

    public final void checkAssociationAndPermissionLocked(ProcessRecord processRecord, ProviderInfo providerInfo, int i, int i2, boolean z, String str, long j) {
        String checkContentProviderAssociation = checkContentProviderAssociation(processRecord, i, providerInfo);
        if (checkContentProviderAssociation != null) {
            throw new SecurityException("Content provider lookup " + str + " failed: association not allowed with package " + checkContentProviderAssociation);
        }
        checkTime(j, "getContentProviderImpl: before checkContentProviderPermission");
        String checkContentProviderPermission = checkContentProviderPermission(providerInfo, Binder.getCallingPid(), Binder.getCallingUid(), i2, z, processRecord != null ? processRecord.toString() : null);
        if (checkContentProviderPermission != null) {
            throw new SecurityException(checkContentProviderPermission);
        }
        checkTime(j, "getContentProviderImpl: after checkContentProviderPermission");
    }

    public void publishContentProviders(IApplicationThread iApplicationThread, List list) {
        ProviderInfo providerInfo;
        int i;
        ProviderInfo providerInfo2;
        ContentProviderRecord provider;
        if (list == null) {
            return;
        }
        this.mService.enforceNotIsolatedOrSdkSandboxCaller("publishContentProviders");
        ActivityManagerService activityManagerService = this.mService;
        ActivityManagerService.boostPriorityForLockedSection();
        synchronized (activityManagerService) {
            try {
                ProcessRecord recordForAppLOSP = this.mService.getRecordForAppLOSP(iApplicationThread);
                if (recordForAppLOSP == null) {
                    throw new SecurityException("Unable to find app for caller " + iApplicationThread + " (pid=" + Binder.getCallingPid() + ") when publishing content providers");
                }
                long clearCallingIdentity = Binder.clearCallingIdentity();
                int size = list.size();
                int i2 = 0;
                boolean z = false;
                while (i2 < size) {
                    ContentProviderHolder contentProviderHolder = (ContentProviderHolder) list.get(i2);
                    if (contentProviderHolder != null && (providerInfo2 = contentProviderHolder.info) != null && contentProviderHolder.provider != null && (provider = recordForAppLOSP.mProviders.getProvider(providerInfo2.name)) != null) {
                        ProviderInfo providerInfo3 = provider.info;
                        this.mProviderMap.putProviderByClass(new ComponentName(providerInfo3.packageName, providerInfo3.name), provider);
                        for (String str : provider.info.authority.split(KnoxVpnFirewallHelper.DELIMITER)) {
                            this.mProviderMap.putProviderByName(str, provider);
                        }
                        int size2 = this.mLaunchingProviders.size();
                        int i3 = 0;
                        boolean z2 = false;
                        while (i3 < size2) {
                            if (this.mLaunchingProviders.get(i3) == provider) {
                                this.mLaunchingProviders.remove(i3);
                                i3--;
                                size2--;
                                z2 = true;
                            }
                            i3++;
                        }
                        if (z2) {
                            this.mService.mHandler.removeMessages(73, provider);
                            this.mService.mHandler.removeMessages(57, recordForAppLOSP);
                        }
                        ApplicationInfo applicationInfo = provider.info.applicationInfo;
                        i = i2;
                        recordForAppLOSP.addPackage(applicationInfo.packageName, applicationInfo.longVersionCode, this.mService.mProcessStats);
                        synchronized (provider) {
                            provider.provider = contentProviderHolder.provider;
                            provider.setProcess(recordForAppLOSP);
                            provider.notifyAll();
                            provider.onProviderPublishStatusLocked(true);
                        }
                        provider.mRestartCount = 0;
                        if (hasProviderConnectionLocked(recordForAppLOSP)) {
                            recordForAppLOSP.mProfile.addHostingComponentType(64);
                        }
                        z = true;
                        i2 = i + 1;
                    }
                    i = i2;
                    i2 = i + 1;
                }
                if (z) {
                    this.mService.updateOomAdjLocked(recordForAppLOSP, 7);
                    int size3 = list.size();
                    for (int i4 = 0; i4 < size3; i4++) {
                        ContentProviderHolder contentProviderHolder2 = (ContentProviderHolder) list.get(i4);
                        if (contentProviderHolder2 != null && (providerInfo = contentProviderHolder2.info) != null && contentProviderHolder2.provider != null) {
                            maybeUpdateProviderUsageStatsLocked(recordForAppLOSP, providerInfo.packageName, providerInfo.authority);
                        }
                    }
                }
                Binder.restoreCallingIdentity(clearCallingIdentity);
            } catch (Throwable th) {
                ActivityManagerService.resetPriorityAfterLockedSection();
                throw th;
            }
        }
        ActivityManagerService.resetPriorityAfterLockedSection();
    }

    public void removeContentProvider(IBinder iBinder, boolean z) {
        ProviderInfo providerInfo;
        this.mService.enforceNotIsolatedCaller("removeContentProvider");
        long clearCallingIdentity = Binder.clearCallingIdentity();
        try {
            try {
                ContentProviderConnection contentProviderConnection = (ContentProviderConnection) iBinder;
                if (contentProviderConnection == null) {
                    throw new NullPointerException("connection is null");
                }
                ContentProviderRecord contentProviderRecord = contentProviderConnection.provider;
                ActivityManagerService.traceBegin(64L, "removeContentProvider: ", (contentProviderRecord == null || (providerInfo = contentProviderRecord.info) == null) ? "" : providerInfo.authority);
                try {
                    ActivityManagerService activityManagerService = this.mService;
                    ActivityManagerService.boostPriorityForLockedSection();
                    synchronized (activityManagerService) {
                        try {
                            decProviderCountLocked(contentProviderConnection, null, null, z, true, true);
                        } catch (Throwable th) {
                            ActivityManagerService.resetPriorityAfterLockedSection();
                            throw th;
                        }
                    }
                    ActivityManagerService.resetPriorityAfterLockedSection();
                    Binder.restoreCallingIdentity(clearCallingIdentity);
                } finally {
                    Trace.traceEnd(64L);
                }
            } catch (ClassCastException unused) {
                String str = "removeContentProvider: " + iBinder + " not a ContentProviderConnection";
                Slog.w("ContentProviderHelper", str);
                throw new IllegalArgumentException(str);
            }
        } catch (Throwable th2) {
            Binder.restoreCallingIdentity(clearCallingIdentity);
            throw th2;
        }
    }

    public void removeContentProviderExternalAsUser(String str, IBinder iBinder, int i) {
        this.mService.enforceCallingPermission("android.permission.ACCESS_CONTENT_PROVIDERS_EXTERNALLY", "Do not have permission in call removeContentProviderExternal()");
        long clearCallingIdentity = Binder.clearCallingIdentity();
        try {
            removeContentProviderExternalUnchecked(str, iBinder, i);
        } finally {
            Binder.restoreCallingIdentity(clearCallingIdentity);
        }
    }

    public void removeContentProviderExternalUnchecked(String str, IBinder iBinder, int i) {
        ActivityManagerService activityManagerService = this.mService;
        ActivityManagerService.boostPriorityForLockedSection();
        synchronized (activityManagerService) {
            try {
                ContentProviderRecord providerByName = this.mProviderMap.getProviderByName(str, i);
                if (providerByName == null) {
                    ActivityManagerService.resetPriorityAfterLockedSection();
                    return;
                }
                ProviderInfo providerInfo = providerByName.info;
                ContentProviderRecord providerByClass = this.mProviderMap.getProviderByClass(new ComponentName(providerInfo.packageName, providerInfo.name), i);
                if (providerByClass.hasExternalProcessHandles()) {
                    if (providerByClass.removeExternalProcessHandleLocked(iBinder)) {
                        this.mService.updateOomAdjLocked(providerByClass.proc, 8);
                    } else {
                        Slog.e("ContentProviderHelper", "Attempt to remove content provider " + providerByClass + " with no external reference for token: " + iBinder + ".");
                    }
                } else {
                    Slog.e("ContentProviderHelper", "Attempt to remove content provider: " + providerByClass + " with no external references.");
                }
                ActivityManagerService.resetPriorityAfterLockedSection();
            } catch (Throwable th) {
                ActivityManagerService.resetPriorityAfterLockedSection();
                throw th;
            }
        }
    }

    public boolean refContentProvider(IBinder iBinder, int i, int i2) {
        ProviderInfo providerInfo;
        try {
            ContentProviderConnection contentProviderConnection = (ContentProviderConnection) iBinder;
            if (contentProviderConnection == null) {
                throw new NullPointerException("connection is null");
            }
            ContentProviderRecord contentProviderRecord = contentProviderConnection.provider;
            ActivityManagerService.traceBegin(64L, "refContentProvider: ", (contentProviderRecord == null || (providerInfo = contentProviderRecord.info) == null) ? "" : providerInfo.authority);
            try {
                contentProviderConnection.adjustCounts(i, i2);
                return !contentProviderConnection.dead;
            } finally {
                Trace.traceEnd(64L);
            }
        } catch (ClassCastException unused) {
            String str = "refContentProvider: " + iBinder + " not a ContentProviderConnection";
            Slog.w("ContentProviderHelper", str);
            throw new IllegalArgumentException(str);
        }
    }

    /* JADX WARN: Finally extract failed */
    public void unstableProviderDied(IBinder iBinder) {
        IContentProvider iContentProvider;
        ProviderInfo providerInfo;
        try {
            ContentProviderConnection contentProviderConnection = (ContentProviderConnection) iBinder;
            if (contentProviderConnection == null) {
                throw new NullPointerException("connection is null");
            }
            ContentProviderRecord contentProviderRecord = contentProviderConnection.provider;
            ActivityManagerService.traceBegin(64L, "unstableProviderDied: ", (contentProviderRecord == null || (providerInfo = contentProviderRecord.info) == null) ? "" : providerInfo.authority);
            try {
                ActivityManagerService activityManagerService = this.mService;
                ActivityManagerService.boostPriorityForLockedSection();
                synchronized (activityManagerService) {
                    try {
                        iContentProvider = contentProviderConnection.provider.provider;
                    } catch (Throwable th) {
                        ActivityManagerService.resetPriorityAfterLockedSection();
                        throw th;
                    }
                }
                ActivityManagerService.resetPriorityAfterLockedSection();
                if (iContentProvider == null) {
                    return;
                }
                if (iContentProvider.asBinder().pingBinder()) {
                    ActivityManagerService activityManagerService2 = this.mService;
                    ActivityManagerService.boostPriorityForLockedSection();
                    synchronized (activityManagerService2) {
                        try {
                            Slog.w("ContentProviderHelper", "unstableProviderDied: caller " + Binder.getCallingUid() + " says " + contentProviderConnection + " died, but we don't agree");
                        } catch (Throwable th2) {
                            ActivityManagerService.resetPriorityAfterLockedSection();
                            throw th2;
                        }
                    }
                    ActivityManagerService.resetPriorityAfterLockedSection();
                }
                ActivityManagerService activityManagerService3 = this.mService;
                ActivityManagerService.boostPriorityForLockedSection();
                synchronized (activityManagerService3) {
                    try {
                        ContentProviderRecord contentProviderRecord2 = contentProviderConnection.provider;
                        if (contentProviderRecord2.provider == iContentProvider) {
                            ProcessRecord processRecord = contentProviderRecord2.proc;
                            if (processRecord != null && processRecord.getThread() != null) {
                                this.mService.reportUidInfoMessageLocked("ContentProviderHelper", "Process " + processRecord.processName + " (pid " + processRecord.getPid() + ") early provider death", processRecord.info.uid);
                                long clearCallingIdentity = Binder.clearCallingIdentity();
                                try {
                                    this.mService.appDiedLocked(processRecord, "unstable content provider");
                                    ActivityManagerService.resetPriorityAfterLockedSection();
                                    return;
                                } finally {
                                    Binder.restoreCallingIdentity(clearCallingIdentity);
                                }
                            }
                        }
                        ActivityManagerService.resetPriorityAfterLockedSection();
                    } catch (Throwable th3) {
                        ActivityManagerService.resetPriorityAfterLockedSection();
                        throw th3;
                    }
                }
            } finally {
                Trace.traceEnd(64L);
            }
        } catch (ClassCastException unused) {
            String str = "refContentProvider: " + iBinder + " not a ContentProviderConnection";
            Slog.w("ContentProviderHelper", str);
            throw new IllegalArgumentException(str);
        }
    }

    public void appNotRespondingViaProvider(IBinder iBinder) {
        ProviderInfo providerInfo;
        this.mService.enforceCallingPermission("android.permission.REMOVE_TASKS", "appNotRespondingViaProvider()");
        ContentProviderConnection contentProviderConnection = (ContentProviderConnection) iBinder;
        if (contentProviderConnection == null) {
            Slog.w("ContentProviderHelper", "ContentProviderConnection is null");
            return;
        }
        ContentProviderRecord contentProviderRecord = contentProviderConnection.provider;
        ActivityManagerService.traceBegin(64L, "appNotRespondingViaProvider: ", (contentProviderRecord == null || (providerInfo = contentProviderRecord.info) == null) ? "" : providerInfo.authority);
        try {
            ProcessRecord processRecord = contentProviderConnection.provider.proc;
            if (processRecord == null) {
                Slog.w("ContentProviderHelper", "Failed to find hosting ProcessRecord");
            } else {
                this.mService.mAnrHelper.appNotResponding(processRecord, TimeoutRecord.forContentProvider("ContentProvider not responding"));
            }
        } finally {
            Trace.traceEnd(64L);
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r1v7, types: [java.lang.StringBuilder] */
    /* JADX WARN: Type inference failed for: r8v0 */
    /* JADX WARN: Type inference failed for: r8v1 */
    /* JADX WARN: Type inference failed for: r8v2, types: [java.lang.Object] */
    /* JADX WARN: Type inference failed for: r8v3 */
    /* JADX WARN: Type inference failed for: r8v4 */
    /* JADX WARN: Type inference failed for: r8v5 */
    /* JADX WARN: Type inference failed for: r8v8 */
    /* JADX WARN: Type inference failed for: r8v9 */
    public void getMimeTypeFilterAsync(final Uri uri, int i, final RemoteCallback remoteCallback) {
        this.mService.enforceNotIsolatedCaller("getProviderMimeTypeAsync");
        final String authority = uri.getAuthority();
        final int callingUid = Binder.getCallingUid();
        int callingPid = Binder.getCallingPid();
        final int unsafeConvertIncomingUser = this.mService.mUserController.unsafeConvertIncomingUser(i);
        long clearCallingIdentity = canClearIdentity(callingPid, callingUid, unsafeConvertIncomingUser) ? Binder.clearCallingIdentity() : 0L;
        try {
            ?? r8 = 1;
            ContentProviderHolder contentProviderImpl = getContentProviderImpl(null, authority, null, callingUid, null, "getmimetype", true, i, callingPid);
            try {
            } catch (RemoteException e) {
                e = e;
                r8 = uri;
            }
            try {
                if (isHolderVisibleToCaller(contentProviderImpl, callingUid, unsafeConvertIncomingUser)) {
                    if (checkGetAnyTypePermission(callingUid, callingPid)) {
                        Uri uri2 = uri;
                        contentProviderImpl.provider.getTypeAsync(new AttributionSource.Builder(callingUid).build(), uri2, new RemoteCallback(new RemoteCallback.OnResultListener() { // from class: com.android.server.am.ContentProviderHelper$$ExternalSyntheticLambda1
                            public final void onResult(Bundle bundle) {
                                ContentProviderHelper.this.lambda$getMimeTypeFilterAsync$0(authority, unsafeConvertIncomingUser, remoteCallback, bundle);
                            }
                        }));
                        r8 = uri2;
                    } else {
                        Uri uri3 = uri;
                        contentProviderImpl.provider.getTypeAnonymousAsync(uri3, new RemoteCallback(new RemoteCallback.OnResultListener() { // from class: com.android.server.am.ContentProviderHelper$$ExternalSyntheticLambda2
                            public final void onResult(Bundle bundle) {
                                ContentProviderHelper.this.lambda$getMimeTypeFilterAsync$1(authority, unsafeConvertIncomingUser, remoteCallback, callingUid, uri, bundle);
                            }
                        }));
                        r8 = uri3;
                    }
                } else {
                    r8 = uri;
                    remoteCallback.sendResult(Bundle.EMPTY);
                }
            } catch (RemoteException e2) {
                e = e2;
                Log.w("ContentProviderHelper", "Content provider dead retrieving " + r8, e);
                remoteCallback.sendResult(Bundle.EMPTY);
            }
        } finally {
            if (clearCallingIdentity != 0) {
                Binder.restoreCallingIdentity(clearCallingIdentity);
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$getMimeTypeFilterAsync$0(String str, int i, RemoteCallback remoteCallback, Bundle bundle) {
        long clearCallingIdentity = Binder.clearCallingIdentity();
        try {
            removeContentProviderExternalUnchecked(str, null, i);
            Binder.restoreCallingIdentity(clearCallingIdentity);
            remoteCallback.sendResult(bundle);
        } catch (Throwable th) {
            Binder.restoreCallingIdentity(clearCallingIdentity);
            throw th;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$getMimeTypeFilterAsync$1(String str, int i, RemoteCallback remoteCallback, int i2, Uri uri, Bundle bundle) {
        long clearCallingIdentity = Binder.clearCallingIdentity();
        try {
            removeContentProviderExternalUnchecked(str, null, i);
            Binder.restoreCallingIdentity(clearCallingIdentity);
            remoteCallback.sendResult(bundle);
            String pairValue = bundle.getPairValue();
            if (pairValue != null) {
                logGetTypeData(i2, uri, pairValue);
            }
        } catch (Throwable th) {
            Binder.restoreCallingIdentity(clearCallingIdentity);
            throw th;
        }
    }

    public final boolean checkGetAnyTypePermission(int i, int i2) {
        return this.mService.checkPermission("android.permission.GET_ANY_PROVIDER_TYPE", i2, i) == 0;
    }

    public final void logGetTypeData(int i, Uri uri, String str) {
        FrameworkStatsLog.write(FrameworkStatsLog.GET_TYPE_ACCESSED_WITHOUT_PERMISSION, 1, i, uri.getAuthority(), str);
    }

    public final boolean canClearIdentity(int i, int i2, int i3) {
        return UserHandle.getUserId(i2) == i3 || ActivityManagerService.checkComponentPermission("android.permission.INTERACT_ACROSS_USERS", i, i2, -1, true) == 0 || ActivityManagerService.checkComponentPermission("android.permission.INTERACT_ACROSS_USERS_FULL", i, i2, -1, true) == 0;
    }

    public final boolean isHolderVisibleToCaller(ContentProviderHolder contentProviderHolder, int i, int i2) {
        ProviderInfo providerInfo;
        if (contentProviderHolder == null || (providerInfo = contentProviderHolder.info) == null) {
            return false;
        }
        if (ContentProvider.isAuthorityRedirectedForCloneProfile(providerInfo.authority) && resolveParentUserIdForCloneProfile(i2) != i2) {
            return !this.mService.getPackageManagerInternal().filterAppAccess(contentProviderHolder.info.packageName, i, i2, false);
        }
        return !this.mService.getPackageManagerInternal().filterAppAccess(contentProviderHolder.info.packageName, i, i2);
    }

    public static int resolveParentUserIdForCloneProfile(int i) {
        UserManagerInternal userManagerInternal = (UserManagerInternal) LocalServices.getService(UserManagerInternal.class);
        UserInfo userInfo = userManagerInternal.getUserInfo(i);
        return (userInfo == null || !userInfo.isCloneProfile()) ? i : userManagerInternal.getProfileParentId(i);
    }

    public String checkContentProviderAccess(String str, int i) {
        boolean z;
        ProviderInfo providerInfo;
        UserManagerInternal userManagerInternal;
        UserInfo userInfo;
        if (i == -1) {
            this.mService.mContext.enforceCallingOrSelfPermission("android.permission.INTERACT_ACROSS_USERS_FULL", "ContentProviderHelper");
            i = UserHandle.getCallingUserId();
        }
        if (ContentProvider.isAuthorityRedirectedForCloneProfile(str) && (userInfo = (userManagerInternal = (UserManagerInternal) LocalServices.getService(UserManagerInternal.class)).getUserInfo(i)) != null && userInfo.isCloneProfile()) {
            i = userManagerInternal.getProfileParentId(i);
            z = false;
        } else {
            z = true;
        }
        int i2 = i;
        boolean z2 = z;
        try {
            providerInfo = AppGlobals.getPackageManager().resolveContentProvider(str, 790016L, i2);
        } catch (RemoteException unused) {
            providerInfo = null;
        }
        ProviderInfo providerInfo2 = providerInfo;
        if (providerInfo2 == null) {
            return "Failed to find provider " + str + " for user " + i2 + "; expected to find a valid ContentProvider for this authority";
        }
        int callingPid = Binder.getCallingPid();
        synchronized (this.mService.mPidsSelfLocked) {
            ProcessRecord processRecord = this.mService.mPidsSelfLocked.get(callingPid);
            if (processRecord == null) {
                return "Failed to find PID " + callingPid;
            }
            String processRecord2 = processRecord.toString();
            enforceContentProviderRestrictionsForSdkSandbox(providerInfo2);
            return checkContentProviderPermission(providerInfo2, callingPid, Binder.getCallingUid(), i2, z2, processRecord2);
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:67:0x00de A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /* JADX WARN: Type inference failed for: r1v3, types: [boolean] */
    /* JADX WARN: Type inference failed for: r1v4 */
    /* JADX WARN: Type inference failed for: r1v7 */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public int checkContentProviderUriPermission(android.net.Uri r17, int r18, int r19, int r20) {
        /*
            Method dump skipped, instructions count: 236
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: com.android.server.am.ContentProviderHelper.checkContentProviderUriPermission(android.net.Uri, int, int, int):int");
    }

    public void processContentProviderPublishTimedOutLocked(ProcessRecord processRecord) {
        cleanupAppInLaunchingProvidersLocked(processRecord, true);
        this.mService.mProcessList.removeProcessLocked(processRecord, false, true, 7, 0, "timeout publishing content providers");
    }

    public List generateApplicationProvidersLocked(ProcessRecord processRecord) {
        try {
            List list = AppGlobals.getPackageManager().queryContentProviders(processRecord.processName, processRecord.uid, 268438528L, (String) null).getList();
            if (list == null) {
                return null;
            }
            int size = list.size();
            ProcessProviderRecord processProviderRecord = processRecord.mProviders;
            processProviderRecord.ensureProviderCapacity(processProviderRecord.numberOfProviders() + size);
            int i = 0;
            while (i < size) {
                ProviderInfo providerInfo = (ProviderInfo) list.get(i);
                boolean isSingleton = this.mService.isSingleton(providerInfo.processName, providerInfo.applicationInfo, providerInfo.name, providerInfo.flags);
                if (isSingleton && processRecord.userId != 0) {
                    list.remove(i);
                } else {
                    boolean isInstantApp = providerInfo.applicationInfo.isInstantApp();
                    String str = providerInfo.splitName;
                    boolean z = str == null || ArrayUtils.contains(providerInfo.applicationInfo.splitNames, str);
                    if (isInstantApp && !z) {
                        list.remove(i);
                    } else {
                        ComponentName componentName = new ComponentName(providerInfo.packageName, providerInfo.name);
                        ContentProviderRecord providerByClass = this.mProviderMap.getProviderByClass(componentName, processRecord.userId);
                        if (providerByClass == null) {
                            ContentProviderRecord contentProviderRecord = new ContentProviderRecord(this.mService, providerInfo, processRecord.info, componentName, isSingleton);
                            this.mProviderMap.putProviderByClass(componentName, contentProviderRecord);
                            providerByClass = contentProviderRecord;
                        }
                        processProviderRecord.installProvider(providerInfo.name, providerByClass);
                        if (!providerInfo.multiprocess || !"android".equals(providerInfo.packageName)) {
                            ApplicationInfo applicationInfo = providerInfo.applicationInfo;
                            processRecord.addPackage(applicationInfo.packageName, applicationInfo.longVersionCode, this.mService.mProcessStats);
                        }
                        this.mService.notifyPackageUse(providerInfo.applicationInfo.packageName, 4);
                        i++;
                    }
                }
                size--;
                i--;
                i++;
            }
            if (list.isEmpty()) {
                return null;
            }
            return list;
        } catch (RemoteException unused) {
            return null;
        }
    }

    /* loaded from: classes.dex */
    public final class DevelopmentSettingsObserver extends ContentObserver {
        public final ComponentName mBugreportStorageProvider;
        public final Uri mUri;

        public DevelopmentSettingsObserver() {
            super(ContentProviderHelper.this.mService.mHandler);
            Uri uriFor = Settings.Global.getUriFor("development_settings_enabled");
            this.mUri = uriFor;
            this.mBugreportStorageProvider = new ComponentName("com.android.shell", "com.android.shell.BugreportStorageProvider");
            ContentProviderHelper.this.mService.mContext.getContentResolver().registerContentObserver(uriFor, false, this, -1);
            onChange();
        }

        @Override // android.database.ContentObserver
        public void onChange(boolean z, Uri uri, int i) {
            if (this.mUri.equals(uri)) {
                onChange();
            }
        }

        public final void onChange() {
            ContentProviderHelper.this.mService.mContext.getPackageManager().setComponentEnabledSetting(this.mBugreportStorageProvider, Settings.Global.getInt(ContentProviderHelper.this.mService.mContext.getContentResolver(), "development_settings_enabled", Build.IS_ENG ? 1 : 0) != 0 ? 1 : 0, 0);
        }
    }

    public final void installSystemProviders() {
        List generateApplicationProvidersLocked;
        ActivityManagerService activityManagerService = this.mService;
        ActivityManagerService.boostPriorityForLockedSection();
        synchronized (activityManagerService) {
            try {
                generateApplicationProvidersLocked = generateApplicationProvidersLocked((ProcessRecord) this.mService.mProcessList.getProcessNamesLOSP().get("system", 1000));
                if (generateApplicationProvidersLocked != null) {
                    for (int size = generateApplicationProvidersLocked.size() - 1; size >= 0; size--) {
                        ProviderInfo providerInfo = (ProviderInfo) generateApplicationProvidersLocked.get(size);
                        if ((providerInfo.applicationInfo.flags & 1) == 0) {
                            Slog.w("ContentProviderHelper", "Not installing system proc provider " + providerInfo.name + ": not system .apk");
                            generateApplicationProvidersLocked.remove(size);
                        }
                    }
                }
            } catch (Throwable th) {
                ActivityManagerService.resetPriorityAfterLockedSection();
                throw th;
            }
        }
        ActivityManagerService.resetPriorityAfterLockedSection();
        if (generateApplicationProvidersLocked != null) {
            this.mService.mSystemThread.installSystemProviders(generateApplicationProvidersLocked);
        }
        synchronized (this) {
            this.mSystemProvidersInstalled = true;
        }
        ActivityManagerService activityManagerService2 = this.mService;
        activityManagerService2.mConstants.start(activityManagerService2.mContext.getContentResolver());
        this.mService.mCoreSettingsObserver = new CoreSettingsObserver(this.mService);
        this.mService.mActivityTaskManager.installSystemProviders();
        new DevelopmentSettingsObserver();
        SettingsToPropertiesMapper.start(this.mService.mContext.getContentResolver());
        this.mService.mOomAdjuster.initSettings();
        RescueParty.onSettingsProviderPublished(this.mService.mContext);
    }

    public void installEncryptionUnawareProviders(int i) {
        ActivityManagerGlobalLock activityManagerGlobalLock = this.mService.mProcLock;
        ActivityManagerService.boostPriorityForProcLockedSection();
        synchronized (activityManagerGlobalLock) {
            try {
                ArrayMap map = this.mService.mProcessList.getProcessNamesLOSP().getMap();
                int size = map.size();
                for (int i2 = 0; i2 < size; i2++) {
                    SparseArray sparseArray = (SparseArray) map.valueAt(i2);
                    int size2 = sparseArray.size();
                    for (int i3 = 0; i3 < size2; i3++) {
                        final ProcessRecord processRecord = (ProcessRecord) sparseArray.valueAt(i3);
                        if (processRecord.userId == i && processRecord.getThread() != null && !processRecord.isUnlocked()) {
                            processRecord.getPkgList().forEachPackage(new Consumer() { // from class: com.android.server.am.ContentProviderHelper$$ExternalSyntheticLambda4
                                @Override // java.util.function.Consumer
                                public final void accept(Object obj) {
                                    ContentProviderHelper.this.lambda$installEncryptionUnawareProviders$2(processRecord, (String) obj);
                                }
                            });
                        }
                    }
                }
            } catch (Throwable th) {
                ActivityManagerService.resetPriorityAfterProcLockedSection();
                throw th;
            }
        }
        ActivityManagerService.resetPriorityAfterProcLockedSection();
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX WARN: Removed duplicated region for block: B:22:0x0059 A[Catch: RemoteException -> 0x009e, TRY_LEAVE, TryCatch #0 {RemoteException -> 0x009e, blocks: (B:2:0x0000, B:4:0x0013, B:6:0x001b, B:8:0x0022, B:10:0x002f, B:14:0x0037, B:16:0x0047, B:20:0x004f, B:22:0x0059, B:30:0x006f, B:33:0x0087), top: B:1:0x0000 }] */
    /* JADX WARN: Removed duplicated region for block: B:27:0x0069 A[ADDED_TO_REGION] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public /* synthetic */ void lambda$installEncryptionUnawareProviders$2(com.android.server.am.ProcessRecord r13, java.lang.String r14) {
        /*
            r12 = this;
            android.content.pm.IPackageManager r0 = android.app.AppGlobals.getPackageManager()     // Catch: android.os.RemoteException -> L9e
            int r1 = r13.userId     // Catch: android.os.RemoteException -> L9e
            r2 = 262152(0x40008, double:1.295203E-318)
            android.content.pm.PackageInfo r14 = r0.getPackageInfo(r14, r2, r1)     // Catch: android.os.RemoteException -> L9e
            android.app.IApplicationThread r0 = r13.getThread()     // Catch: android.os.RemoteException -> L9e
            if (r14 == 0) goto L9e
            android.content.pm.ProviderInfo[] r1 = r14.providers     // Catch: android.os.RemoteException -> L9e
            boolean r1 = com.android.internal.util.ArrayUtils.isEmpty(r1)     // Catch: android.os.RemoteException -> L9e
            if (r1 != 0) goto L9e
            android.content.pm.ProviderInfo[] r14 = r14.providers     // Catch: android.os.RemoteException -> L9e
            int r1 = r14.length     // Catch: android.os.RemoteException -> L9e
            r2 = 0
            r3 = r2
        L20:
            if (r3 >= r1) goto L9e
            r4 = r14[r3]     // Catch: android.os.RemoteException -> L9e
            java.lang.String r5 = r4.processName     // Catch: android.os.RemoteException -> L9e
            java.lang.String r6 = r13.processName     // Catch: android.os.RemoteException -> L9e
            boolean r5 = java.util.Objects.equals(r5, r6)     // Catch: android.os.RemoteException -> L9e
            r6 = 1
            if (r5 != 0) goto L36
            boolean r5 = r4.multiprocess     // Catch: android.os.RemoteException -> L9e
            if (r5 == 0) goto L34
            goto L36
        L34:
            r5 = r2
            goto L37
        L36:
            r5 = r6
        L37:
            com.android.server.am.ActivityManagerService r7 = r12.mService     // Catch: android.os.RemoteException -> L9e
            java.lang.String r8 = r4.processName     // Catch: android.os.RemoteException -> L9e
            android.content.pm.ApplicationInfo r9 = r4.applicationInfo     // Catch: android.os.RemoteException -> L9e
            java.lang.String r10 = r4.name     // Catch: android.os.RemoteException -> L9e
            int r11 = r4.flags     // Catch: android.os.RemoteException -> L9e
            boolean r7 = r7.isSingleton(r8, r9, r10, r11)     // Catch: android.os.RemoteException -> L9e
            if (r7 == 0) goto L4e
            int r7 = r13.userId     // Catch: android.os.RemoteException -> L9e
            if (r7 != 0) goto L4c
            goto L4e
        L4c:
            r7 = r2
            goto L4f
        L4e:
            r7 = r6
        L4f:
            android.content.pm.ApplicationInfo r8 = r4.applicationInfo     // Catch: android.os.RemoteException -> L9e
            boolean r8 = r8.isInstantApp()     // Catch: android.os.RemoteException -> L9e
            java.lang.String r9 = r4.splitName     // Catch: android.os.RemoteException -> L9e
            if (r9 == 0) goto L65
            android.content.pm.ApplicationInfo r10 = r4.applicationInfo     // Catch: android.os.RemoteException -> L9e
            java.lang.String[] r10 = r10.splitNames     // Catch: android.os.RemoteException -> L9e
            boolean r9 = com.android.internal.util.ArrayUtils.contains(r10, r9)     // Catch: android.os.RemoteException -> L9e
            if (r9 == 0) goto L64
            goto L65
        L64:
            r6 = r2
        L65:
            java.lang.String r9 = "ContentProviderHelper"
            if (r5 == 0) goto L87
            if (r7 == 0) goto L87
            if (r8 == 0) goto L6f
            if (r6 == 0) goto L87
        L6f:
            java.lang.StringBuilder r5 = new java.lang.StringBuilder     // Catch: android.os.RemoteException -> L9e
            r5.<init>()     // Catch: android.os.RemoteException -> L9e
            java.lang.String r6 = "Installing "
            r5.append(r6)     // Catch: android.os.RemoteException -> L9e
            r5.append(r4)     // Catch: android.os.RemoteException -> L9e
            java.lang.String r5 = r5.toString()     // Catch: android.os.RemoteException -> L9e
            android.util.Log.v(r9, r5)     // Catch: android.os.RemoteException -> L9e
            r0.scheduleInstallProvider(r4)     // Catch: android.os.RemoteException -> L9e
            goto L9b
        L87:
            java.lang.StringBuilder r5 = new java.lang.StringBuilder     // Catch: android.os.RemoteException -> L9e
            r5.<init>()     // Catch: android.os.RemoteException -> L9e
            java.lang.String r6 = "Skipping "
            r5.append(r6)     // Catch: android.os.RemoteException -> L9e
            r5.append(r4)     // Catch: android.os.RemoteException -> L9e
            java.lang.String r4 = r5.toString()     // Catch: android.os.RemoteException -> L9e
            android.util.Log.v(r9, r4)     // Catch: android.os.RemoteException -> L9e
        L9b:
            int r3 = r3 + 1
            goto L20
        L9e:
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: com.android.server.am.ContentProviderHelper.lambda$installEncryptionUnawareProviders$2(com.android.server.am.ProcessRecord, java.lang.String):void");
    }

    public final ContentProviderConnection incProviderCountLocked(ProcessRecord processRecord, ContentProviderRecord contentProviderRecord, IBinder iBinder, int i, String str, String str2, boolean z, boolean z2, long j, ProcessList processList, int i2) {
        if (processRecord == null) {
            contentProviderRecord.addExternalProcessHandleLocked(iBinder, i, str2);
            return null;
        }
        ProcessProviderRecord processProviderRecord = processRecord.mProviders;
        int numberOfProviderConnections = processProviderRecord.numberOfProviderConnections();
        for (int i3 = 0; i3 < numberOfProviderConnections; i3++) {
            ContentProviderConnection providerConnectionAt = processProviderRecord.getProviderConnectionAt(i3);
            if (providerConnectionAt.provider == contentProviderRecord) {
                providerConnectionAt.incrementCount(z);
                return providerConnectionAt;
            }
        }
        ContentProviderConnection contentProviderConnection = new ContentProviderConnection(contentProviderRecord, processRecord, str, i2);
        contentProviderConnection.startAssociationIfNeeded();
        contentProviderConnection.initializeCount(z);
        contentProviderRecord.connections.add(contentProviderConnection);
        ProcessRecord processRecord2 = contentProviderRecord.proc;
        if (processRecord2 != null) {
            processRecord2.mProfile.addHostingComponentType(64);
        }
        processProviderRecord.addProviderConnection(contentProviderConnection);
        this.mService.startAssociationLocked(processRecord.uid, processRecord.processName, processRecord.mState.getCurProcState(), contentProviderRecord.uid, contentProviderRecord.appInfo.longVersionCode, contentProviderRecord.name, contentProviderRecord.info.processName);
        if (z2 && contentProviderRecord.proc != null && processRecord.mState.getSetAdj() <= 250) {
            checkTime(j, "getContentProviderImpl: before updateLruProcess");
            processList.updateLruProcessLocked(contentProviderRecord.proc, false, null);
            checkTime(j, "getContentProviderImpl: after updateLruProcess");
        }
        return contentProviderConnection;
    }

    public final boolean decProviderCountLocked(final ContentProviderConnection contentProviderConnection, ContentProviderRecord contentProviderRecord, IBinder iBinder, final boolean z, boolean z2, final boolean z3) {
        if (contentProviderConnection == null) {
            contentProviderRecord.removeExternalProcessHandleLocked(iBinder);
            return false;
        }
        if (contentProviderConnection.totalRefCount() > 1) {
            contentProviderConnection.decrementCount(z);
            return false;
        }
        if (z2) {
            BackgroundThread.getHandler().postDelayed(new Runnable() { // from class: com.android.server.am.ContentProviderHelper$$ExternalSyntheticLambda3
                @Override // java.lang.Runnable
                public final void run() {
                    ContentProviderHelper.this.lambda$decProviderCountLocked$3(contentProviderConnection, z, z3);
                }
            }, 5000L);
        } else {
            lambda$decProviderCountLocked$3(contentProviderConnection, z, z3);
        }
        return true;
    }

    public final boolean hasProviderConnectionLocked(ProcessRecord processRecord) {
        for (int numberOfProviders = processRecord.mProviders.numberOfProviders() - 1; numberOfProviders >= 0; numberOfProviders--) {
            if (!processRecord.mProviders.getProviderAt(numberOfProviders).connections.isEmpty()) {
                return true;
            }
        }
        return false;
    }

    /* renamed from: handleProviderRemoval, reason: merged with bridge method [inline-methods] */
    public final void lambda$decProviderCountLocked$3(ContentProviderConnection contentProviderConnection, boolean z, boolean z2) {
        ProcessRecord processRecord;
        ActivityManagerService activityManagerService = this.mService;
        ActivityManagerService.boostPriorityForLockedSection();
        synchronized (activityManagerService) {
            if (contentProviderConnection != null) {
                try {
                    if (contentProviderConnection.provider != null && contentProviderConnection.decrementCount(z) == 0) {
                        ContentProviderRecord contentProviderRecord = contentProviderConnection.provider;
                        contentProviderConnection.stopAssociation();
                        contentProviderRecord.connections.remove(contentProviderConnection);
                        ProcessRecord processRecord2 = contentProviderRecord.proc;
                        if (processRecord2 != null && !hasProviderConnectionLocked(processRecord2)) {
                            contentProviderRecord.proc.mProfile.clearHostingComponentType(64);
                        }
                        contentProviderConnection.client.mProviders.removeProviderConnection(contentProviderConnection);
                        if (contentProviderConnection.client.mState.getSetProcState() < 15 && (processRecord = contentProviderRecord.proc) != null) {
                            processRecord.mProviders.setLastProviderTime(SystemClock.uptimeMillis());
                        }
                        ActivityManagerService activityManagerService2 = this.mService;
                        ProcessRecord processRecord3 = contentProviderConnection.client;
                        activityManagerService2.stopAssociationLocked(processRecord3.uid, processRecord3.processName, contentProviderRecord.uid, contentProviderRecord.appInfo.longVersionCode, contentProviderRecord.name, contentProviderRecord.info.processName);
                        if (z2) {
                            this.mService.updateOomAdjLocked(contentProviderConnection.provider.proc, 8);
                        }
                        ActivityManagerService.resetPriorityAfterLockedSection();
                        return;
                    }
                } catch (Throwable th) {
                    ActivityManagerService.resetPriorityAfterLockedSection();
                    throw th;
                }
            }
            ActivityManagerService.resetPriorityAfterLockedSection();
        }
    }

    public final String checkContentProviderPermission(ProviderInfo providerInfo, int i, int i2, int i3, boolean z, String str) {
        int i4;
        String str2;
        boolean z2;
        boolean z3 = false;
        if (z) {
            int unsafeConvertIncomingUser = this.mService.mUserController.unsafeConvertIncomingUser(i3);
            if (unsafeConvertIncomingUser == UserHandle.getUserId(i2)) {
                z2 = false;
            } else {
                if (this.mService.mUgmInternal.checkAuthorityGrants(i2, providerInfo, unsafeConvertIncomingUser, z)) {
                    return null;
                }
                z2 = true;
            }
            i4 = this.mService.mUserController.handleIncomingUser(i, i2, i3, false, 0, "checkContentProviderPermissionLocked " + providerInfo.authority, null);
            if (i4 == unsafeConvertIncomingUser) {
                z3 = z2;
            }
        } else {
            i4 = i3;
        }
        if (ActivityManagerService.checkComponentPermission(providerInfo.readPermission, i, i2, providerInfo.applicationInfo.uid, providerInfo.exported) == 0 || ActivityManagerService.checkComponentPermission(providerInfo.writePermission, i, i2, providerInfo.applicationInfo.uid, providerInfo.exported) == 0) {
            return null;
        }
        PathPermission[] pathPermissionArr = providerInfo.pathPermissions;
        if (pathPermissionArr != null) {
            int length = pathPermissionArr.length;
            while (length > 0) {
                length--;
                PathPermission pathPermission = pathPermissionArr[length];
                String readPermission = pathPermission.getReadPermission();
                if (readPermission != null && ActivityManagerService.checkComponentPermission(readPermission, i, i2, providerInfo.applicationInfo.uid, providerInfo.exported) == 0) {
                    return null;
                }
                String writePermission = pathPermission.getWritePermission();
                if (writePermission != null && ActivityManagerService.checkComponentPermission(writePermission, i, i2, providerInfo.applicationInfo.uid, providerInfo.exported) == 0) {
                    return null;
                }
            }
        }
        if (!z3 && this.mService.mUgmInternal.checkAuthorityGrants(i2, providerInfo, i4, z)) {
            return null;
        }
        if (!providerInfo.exported) {
            str2 = " that is not exported from UID " + providerInfo.applicationInfo.uid;
        } else if ("android.permission.MANAGE_DOCUMENTS".equals(providerInfo.readPermission)) {
            str2 = " requires that you obtain access using ACTION_OPEN_DOCUMENT or related APIs";
        } else {
            str2 = " requires " + providerInfo.readPermission + " or " + providerInfo.writePermission;
        }
        StringBuilder sb = new StringBuilder();
        sb.append("Permission Denial: opening provider ");
        sb.append(providerInfo.name);
        sb.append(" from ");
        sb.append(str != null ? str : "(null)");
        sb.append(" (pid=");
        sb.append(i);
        sb.append(", uid=");
        sb.append(i2);
        sb.append(")");
        sb.append(str2);
        String sb2 = sb.toString();
        Slog.w("ContentProviderHelper", sb2);
        return sb2;
    }

    public final String checkContentProviderAssociation(final ProcessRecord processRecord, int i, final ProviderInfo providerInfo) {
        if (processRecord == null) {
            if (this.mService.validateAssociationAllowedLocked(providerInfo.packageName, providerInfo.applicationInfo.uid, null, i)) {
                return null;
            }
            return "<null>";
        }
        return (String) processRecord.getPkgList().searchEachPackage(new Function() { // from class: com.android.server.am.ContentProviderHelper$$ExternalSyntheticLambda0
            @Override // java.util.function.Function
            public final Object apply(Object obj) {
                String lambda$checkContentProviderAssociation$4;
                lambda$checkContentProviderAssociation$4 = ContentProviderHelper.this.lambda$checkContentProviderAssociation$4(processRecord, providerInfo, (String) obj);
                return lambda$checkContentProviderAssociation$4;
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ String lambda$checkContentProviderAssociation$4(ProcessRecord processRecord, ProviderInfo providerInfo, String str) {
        if (this.mService.validateAssociationAllowedLocked(str, processRecord.uid, providerInfo.packageName, providerInfo.applicationInfo.uid)) {
            return null;
        }
        return providerInfo.packageName;
    }

    public ProviderInfo getProviderInfoLocked(String str, int i, int i2) {
        ContentProviderRecord providerByName = this.mProviderMap.getProviderByName(str, i);
        if (providerByName != null) {
            return providerByName.info;
        }
        try {
            return AppGlobals.getPackageManager().resolveContentProvider(str, i2 | IInstalld.FLAG_FREE_CACHE_DEFY_TARGET_FREE_BYTES, i);
        } catch (RemoteException unused) {
            return null;
        }
    }

    public final void maybeUpdateProviderUsageStatsLocked(ProcessRecord processRecord, String str, String str2) {
        UserState startedUserState;
        if (processRecord == null || processRecord.mState.getCurProcState() > 6 || (startedUserState = this.mService.mUserController.getStartedUserState(processRecord.userId)) == null) {
            return;
        }
        long elapsedRealtime = SystemClock.elapsedRealtime();
        Long l = (Long) startedUserState.mProviderLastReportedFg.get(str2);
        if (l == null || l.longValue() < elapsedRealtime - 60000) {
            if (this.mService.mSystemReady) {
                this.mService.mUsageStatsService.reportContentProviderUsage(str2, str, processRecord.userId);
            }
            startedUserState.mProviderLastReportedFg.put(str2, Long.valueOf(elapsedRealtime));
        }
    }

    public final boolean isProcessAliveLocked(ProcessRecord processRecord) {
        int pid = processRecord.getPid();
        if (pid <= 0) {
            return false;
        }
        String str = "/proc/" + pid + "/stat";
        long[] jArr = this.mProcessStateStatsLongs;
        jArr[0] = 0;
        if (!Process.readProcFile(str, PROCESS_STATE_STATS_FORMAT, null, jArr, null)) {
            return false;
        }
        long j = this.mProcessStateStatsLongs[0];
        return (j == 90 || j == 88 || j == 120 || j == 75 || Process.getUidForPid(pid) != processRecord.uid) ? false : true;
    }

    /* loaded from: classes.dex */
    public final class StartActivityRunnable implements Runnable {
        public final Context mContext;
        public final Intent mIntent;
        public final UserHandle mUserHandle;

        public StartActivityRunnable(Context context, Intent intent, UserHandle userHandle) {
            this.mContext = context;
            this.mIntent = intent;
            this.mUserHandle = userHandle;
        }

        @Override // java.lang.Runnable
        public void run() {
            this.mContext.startActivityAsUser(this.mIntent, this.mUserHandle);
        }
    }

    public final boolean requestTargetProviderPermissionsReviewIfNeededLocked(ProviderInfo providerInfo, ProcessRecord processRecord, int i, Context context) {
        boolean z = true;
        if (!this.mService.getPackageManagerInternal().isPermissionsReviewRequired(providerInfo.packageName, i)) {
            return true;
        }
        if (processRecord != null && processRecord.mState.getSetSchedGroup() <= 0) {
            z = false;
        }
        if (!z) {
            Slog.w("ContentProviderHelper", "u" + i + " Instantiating a provider in package " + providerInfo.packageName + " requires a permissions review");
            return false;
        }
        Intent intent = new Intent("android.intent.action.REVIEW_PERMISSIONS");
        intent.addFlags(276824064);
        intent.putExtra("android.intent.extra.PACKAGE_NAME", providerInfo.packageName);
        this.mService.mHandler.post(new StartActivityRunnable(context, intent, new UserHandle(i)));
        return false;
    }

    /* JADX WARN: Removed duplicated region for block: B:68:0x0023  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public boolean removeDyingProviderLocked(com.android.server.am.ProcessRecord r19, com.android.server.am.ContentProviderRecord r20, boolean r21) {
        /*
            Method dump skipped, instructions count: 336
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: com.android.server.am.ContentProviderHelper.removeDyingProviderLocked(com.android.server.am.ProcessRecord, com.android.server.am.ContentProviderRecord, boolean):boolean");
    }

    public boolean checkAppInLaunchingProvidersLocked(ProcessRecord processRecord) {
        for (int size = this.mLaunchingProviders.size() - 1; size >= 0; size--) {
            if (((ContentProviderRecord) this.mLaunchingProviders.get(size)).launchingApp == processRecord) {
                return true;
            }
        }
        return false;
    }

    public boolean checkAppInLaunchingProvidersMARsLocked(ProcessRecord processRecord) {
        ProcessRecord processRecord2;
        for (int size = this.mLaunchingProviders.size() - 1; size >= 0; size--) {
            try {
                ContentProviderRecord contentProviderRecord = (ContentProviderRecord) this.mLaunchingProviders.get(size);
                if (contentProviderRecord != null && (processRecord2 = contentProviderRecord.launchingApp) != null && processRecord2 == processRecord) {
                    return true;
                }
            } catch (IndexOutOfBoundsException e) {
                Log.e("ContentProviderHelper", Log.getStackTraceString(e));
                return true;
            }
        }
        return false;
    }

    public boolean cleanupAppInLaunchingProvidersLocked(ProcessRecord processRecord, boolean z) {
        boolean z2 = false;
        for (int size = this.mLaunchingProviders.size() - 1; size >= 0; size--) {
            ContentProviderRecord contentProviderRecord = (ContentProviderRecord) this.mLaunchingProviders.get(size);
            if (contentProviderRecord.launchingApp == processRecord) {
                int i = contentProviderRecord.mRestartCount + 1;
                contentProviderRecord.mRestartCount = i;
                if (i > 3) {
                    z = true;
                }
                if (z || processRecord.mErrorState.isBad() || !contentProviderRecord.hasConnectionOrHandle()) {
                    removeDyingProviderLocked(processRecord, contentProviderRecord, true);
                } else {
                    z2 = true;
                }
            }
        }
        return z2;
    }

    public final void checkTime(long j, String str) {
        long uptimeMillis = SystemClock.uptimeMillis() - j;
        if (uptimeMillis > 50) {
            Slog.w("ContentProviderHelper", "Slow operation: " + uptimeMillis + "ms so far, now at " + str);
        }
    }

    public void dumpProvidersLocked(FileDescriptor fileDescriptor, PrintWriter printWriter, String[] strArr, int i, boolean z, String str) {
        new ActivityManagerService.ItemMatcher().build(strArr, i);
        printWriter.println("ACTIVITY MANAGER CONTENT PROVIDERS (dumpsys activity providers)");
        boolean dumpProvidersLocked = this.mProviderMap.dumpProvidersLocked(printWriter, z, str);
        if (this.mLaunchingProviders.size() > 0) {
            boolean z2 = false;
            boolean z3 = dumpProvidersLocked;
            for (int size = this.mLaunchingProviders.size() - 1; size >= 0; size--) {
                ContentProviderRecord contentProviderRecord = (ContentProviderRecord) this.mLaunchingProviders.get(size);
                if (str == null || str.equals(contentProviderRecord.name.getPackageName())) {
                    if (!z2) {
                        if (z3) {
                            printWriter.println();
                        }
                        printWriter.println("  Launching content providers:");
                        dumpProvidersLocked = true;
                        z3 = true;
                        z2 = true;
                    }
                    printWriter.print("  Launching #");
                    printWriter.print(size);
                    printWriter.print(": ");
                    printWriter.println(contentProviderRecord);
                }
            }
        }
        if (dumpProvidersLocked) {
            return;
        }
        printWriter.println("  (nothing)");
    }

    public final void enforceContentProviderRestrictionsForSdkSandbox(ProviderInfo providerInfo) {
        if (Process.isSdkSandboxUid(Binder.getCallingUid())) {
            SdkSandboxManagerLocal sdkSandboxManagerLocal = (SdkSandboxManagerLocal) LocalManagerRegistry.getManager(SdkSandboxManagerLocal.class);
            if (sdkSandboxManagerLocal == null) {
                throw new IllegalStateException("SdkSandboxManagerLocal not found when checking whether SDK sandbox uid may access the contentprovider.");
            }
            if (sdkSandboxManagerLocal.canAccessContentProviderFromSdkSandbox(providerInfo)) {
                return;
            }
            throw new SecurityException("SDK sandbox uid may not access contentprovider " + providerInfo.name);
        }
    }

    public boolean dumpProvider(FileDescriptor fileDescriptor, PrintWriter printWriter, String str, String[] strArr, int i, boolean z) {
        return this.mProviderMap.dumpProvider(fileDescriptor, printWriter, str, strArr, i, z);
    }

    public boolean dumpProviderProto(FileDescriptor fileDescriptor, PrintWriter printWriter, String str, String[] strArr) {
        return this.mProviderMap.dumpProviderProto(fileDescriptor, printWriter, str, strArr);
    }
}
