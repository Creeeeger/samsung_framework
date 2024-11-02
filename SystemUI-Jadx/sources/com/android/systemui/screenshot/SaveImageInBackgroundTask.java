package com.android.systemui.screenshot;

import android.app.ActivityManager;
import android.app.Notification;
import android.app.PendingIntent;
import android.content.ClipData;
import android.content.ClipDescription;
import android.content.ComponentName;
import android.content.Context;
import android.content.Intent;
import android.content.pm.PackageManager;
import android.content.pm.ResolveInfo;
import android.content.res.Resources;
import android.graphics.Bitmap;
import android.graphics.drawable.Icon;
import android.net.Uri;
import android.os.AsyncTask;
import android.os.Bundle;
import android.os.Process;
import android.os.UserHandle;
import android.provider.DeviceConfig;
import android.provider.Settings;
import android.util.Base64;
import android.util.Log;
import androidx.profileinstaller.ProfileInstaller$$ExternalSyntheticLambda0;
import androidx.slice.widget.RowView$$ExternalSyntheticOutline0;
import com.android.keyguard.KeyguardPluginControllerImpl$$ExternalSyntheticOutline0;
import com.android.keyguard.logging.KeyguardUpdateMonitorLogger$logAssistantVisible$2$$ExternalSyntheticOutline0;
import com.android.systemui.R;
import com.android.systemui.screenshot.ImageExporter;
import com.android.systemui.screenshot.ScreenshotController;
import com.android.systemui.screenshot.ScreenshotNotificationSmartActionsProvider;
import com.android.systemui.screenshot.sep.ScreenCaptureHelper;
import com.android.systemui.screenshot.sep.ScreenshotUtils;
import com.android.systemui.screenshot.sep.SmartClipDataExtractor;
import com.samsung.android.app.scrollcapture.lib.IScrollCaptureService;
import com.samsung.android.app.scrollcapture.lib.RemoteScrollCaptureInterface;
import com.samsung.android.desktopsystemui.sharedlib.system.QuickStepContract;
import com.sec.ims.ImsManager;
import java.io.File;
import java.text.DateFormat;
import java.time.ZonedDateTime;
import java.util.ArrayList;
import java.util.Date;
import java.util.Iterator;
import java.util.List;
import java.util.Random;
import java.util.UUID;
import java.util.concurrent.CompletableFuture;
import java.util.function.Supplier;
import org.json.JSONObject;

/* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
/* loaded from: classes2.dex */
public final class SaveImageInBackgroundTask extends AsyncTask {
    public static final /* synthetic */ int $r8$clinit = 0;
    public final String mBixbyCaptureSharedActivityName;
    public final String mBixbyCaptureSharedPackageName;
    public final Bitmap.CompressFormat mCompressFormat;
    public final Context mContext;
    public final String mImageDisplayName;
    public final ImageExporter mImageExporter;
    public final String mImageFileName;
    public final String mImageFilePath;
    public long mImageTime;
    public final boolean mIsBixbyCaptureShared;
    public final ScreenshotController.SaveImageInBackgroundData mParams;
    public String mScreenshotId;
    public final ScreenshotSmartActions mScreenshotSmartActions;
    public RemoteScrollCaptureInterface mScrollCaptureInterface;
    public final Supplier mSharedElementTransition;
    public final ScreenshotNotificationSmartActionsProvider mSmartActionsProvider;
    public final Random mRandom = new Random();
    public final long mScrollCaptureTransactionId = System.currentTimeMillis();
    public boolean mIsScrollCaptureConnectionListenerInvoked = false;
    public boolean mIsSavingFailed = false;
    public final ScreenshotController.SavedImageData mImageData = new ScreenshotController.SavedImageData();
    public final ScreenshotController.QuickShareData mQuickShareData = new ScreenshotController.QuickShareData();

    /* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
    /* renamed from: com.android.systemui.screenshot.SaveImageInBackgroundTask$1, reason: invalid class name */
    /* loaded from: classes2.dex */
    public final class AnonymousClass1 {
        public final /* synthetic */ ScreenCaptureHelper val$captureHelper;
        public final /* synthetic */ long val$connectionStartTime;

        public AnonymousClass1(long j, ScreenCaptureHelper screenCaptureHelper) {
            this.val$connectionStartTime = j;
            this.val$captureHelper = screenCaptureHelper;
        }

        public final void onConnectionResult(boolean z) {
            boolean z2;
            boolean z3;
            int i = SaveImageInBackgroundTask.$r8$clinit;
            StringBuilder m = RowView$$ExternalSyntheticOutline0.m("onConnectionResult : success = ", z, " / elapsed = ");
            m.append(System.currentTimeMillis() - this.val$connectionStartTime);
            Log.d("Screenshot", m.toString());
            SaveImageInBackgroundTask saveImageInBackgroundTask = SaveImageInBackgroundTask.this;
            if (saveImageInBackgroundTask.mIsSavingFailed) {
                saveImageInBackgroundTask.mScrollCaptureInterface.disconnect();
                SaveImageInBackgroundTask.this.mScrollCaptureInterface = null;
                Log.e("Screenshot", "SaveImageInBackgroundTask : Disconnect ScrollCapture service because saving image failed");
            } else if (z) {
                Bundle bundle = new Bundle();
                bundle.putInt("originId", this.val$captureHelper.screenCaptureOrigin);
                bundle.putInt("captureMode", this.val$captureHelper.screenCaptureType);
                bundle.putInt("captureDisplay", this.val$captureHelper.capturedDisplayId);
                bundle.putInt("rotation", this.val$captureHelper.displayRotation);
                bundle.putInt("safeInsetLeft", this.val$captureHelper.safeInsetLeft);
                bundle.putInt("safeInsetTop", this.val$captureHelper.safeInsetTop);
                bundle.putInt("safeInsetRight", this.val$captureHelper.safeInsetRight);
                bundle.putInt("safeInsetBottom", this.val$captureHelper.safeInsetBottom);
                int i2 = this.val$captureHelper.capturedDisplayId;
                boolean z4 = false;
                if (ScreenshotUtils.VALUE_SUB_DISPLAY_POLICY.contains("WATCHFACE") && i2 == 1) {
                    z2 = true;
                } else {
                    z2 = false;
                }
                bundle.putBoolean("isSubDisplayCapture", z2);
                Context context = SaveImageInBackgroundTask.this.mContext;
                ScreenCaptureHelper screenCaptureHelper = this.val$captureHelper;
                if (screenCaptureHelper.screenCaptureType == 1) {
                    z3 = true;
                } else {
                    z3 = false;
                }
                if (z3) {
                    bundle.putBoolean("statusBarVisible", screenCaptureHelper.isStatusBarVisible);
                    bundle.putBoolean("navigationBarVisible", this.val$captureHelper.isNavigationBarVisible);
                    bundle.putInt("statusBarHeight", this.val$captureHelper.statusBarHeight);
                    bundle.putInt("navigationBarHeight", this.val$captureHelper.navigationBarHeight);
                }
                if (SaveImageInBackgroundTask.this.mIsBixbyCaptureShared) {
                    bundle.putBoolean("isSmartCaptureVisible", false);
                }
                SaveImageInBackgroundTask saveImageInBackgroundTask2 = SaveImageInBackgroundTask.this;
                RemoteScrollCaptureInterface remoteScrollCaptureInterface = saveImageInBackgroundTask2.mScrollCaptureInterface;
                long j = saveImageInBackgroundTask2.mScrollCaptureTransactionId;
                String str = saveImageInBackgroundTask2.mImageFilePath;
                remoteScrollCaptureInterface.getClass();
                Log.d("[ScrCap]_RemoteScrollCaptureInterface", "notifyGlobalScreenshotStarted");
                IScrollCaptureService iScrollCaptureService = remoteScrollCaptureInterface.mService;
                if (iScrollCaptureService != null) {
                    z4 = true;
                }
                if (!z4) {
                    Log.e("[ScrCap]_RemoteScrollCaptureInterface", "notifyGlobalScreenshotStarted : No service connection");
                } else {
                    try {
                        ((IScrollCaptureService.Stub.Proxy) iScrollCaptureService).onGlobalScreenshotStarted(j, str, bundle);
                    } catch (Exception e) {
                        Log.e("[ScrCap]_RemoteScrollCaptureInterface", "notifyGlobalScreenshotStarted : e=" + e);
                        e.printStackTrace();
                    }
                }
            } else {
                Log.e("Screenshot", "SaveImageInBackgroundTask : Failed to connect to ScrollCapture service");
                SaveImageInBackgroundTask.this.mScrollCaptureInterface = null;
            }
            RemoteScrollCaptureInterface remoteScrollCaptureInterface2 = SaveImageInBackgroundTask.this.mScrollCaptureInterface;
            if (remoteScrollCaptureInterface2 != null) {
                synchronized (remoteScrollCaptureInterface2) {
                    SaveImageInBackgroundTask saveImageInBackgroundTask3 = SaveImageInBackgroundTask.this;
                    saveImageInBackgroundTask3.mIsScrollCaptureConnectionListenerInvoked = true;
                    saveImageInBackgroundTask3.mScrollCaptureInterface.notify();
                }
            }
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:53:0x029c  */
    /* JADX WARN: Removed duplicated region for block: B:56:0x02b9  */
    /* JADX WARN: Removed duplicated region for block: B:61:? A[RETURN, SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:62:0x02a5  */
    /* JADX WARN: Type inference failed for: r8v2, types: [com.samsung.android.app.scrollcapture.lib.RemoteScrollCaptureInterface$1] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public SaveImageInBackgroundTask(android.content.Context r8, com.android.systemui.flags.FeatureFlags r9, com.android.systemui.screenshot.ImageExporter r10, com.android.systemui.screenshot.ScreenshotSmartActions r11, com.android.systemui.screenshot.ScreenshotController.SaveImageInBackgroundData r12, java.util.function.Supplier<com.android.systemui.screenshot.ScreenshotController.SavedImageData.ActionTransition> r13, com.android.systemui.screenshot.ScreenshotNotificationSmartActionsProvider r14) {
        /*
            Method dump skipped, instructions count: 718
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: com.android.systemui.screenshot.SaveImageInBackgroundTask.<init>(android.content.Context, com.android.systemui.flags.FeatureFlags, com.android.systemui.screenshot.ImageExporter, com.android.systemui.screenshot.ScreenshotSmartActions, com.android.systemui.screenshot.ScreenshotController$SaveImageInBackgroundData, java.util.function.Supplier, com.android.systemui.screenshot.ScreenshotNotificationSmartActionsProvider):void");
    }

    public static String getSubjectString(long j) {
        return String.format("Screenshot (%s)", DateFormat.getDateTimeInstance().format(new Date(j)));
    }

    public static boolean isFormatPNG(Context context) {
        String string;
        String str = ScreenshotUtils.VALUE_SUB_DISPLAY_POLICY;
        int semGetMyUserId = UserHandle.semGetMyUserId();
        if (150 <= semGetMyUserId && 160 >= semGetMyUserId) {
            string = Settings.System.getStringForUser(context.getContentResolver(), "smart_capture_screenshot_format", 0);
        } else {
            string = Settings.System.getString(context.getContentResolver(), "smart_capture_screenshot_format");
        }
        KeyguardPluginControllerImpl$$ExternalSyntheticOutline0.m("screenshotFormatValue : ", string, "Screenshot");
        if (string == null || !string.equals("PNG")) {
            return false;
        }
        return true;
    }

    public final List buildSmartActions(Context context, List list) {
        ArrayList arrayList = new ArrayList();
        Iterator it = list.iterator();
        while (it.hasNext()) {
            Notification.Action action = (Notification.Action) it.next();
            Bundle extras = action.getExtras();
            String string = extras.getString(ImsManager.INTENT_PARAM_RCS_ENABLE_TYPE, "Smart Action");
            Intent addFlags = new Intent(context, (Class<?>) SmartActionsReceiver.class).putExtra("android:screenshot_action_intent", action.actionIntent).addFlags(QuickStepContract.SYSUI_STATE_NAV_BAR_VIS_GONE);
            addFlags.putExtra("android:screenshot_action_type", string).putExtra("android:screenshot_id", this.mScreenshotId).putExtra("android:smart_actions_enabled", true);
            arrayList.add(new Notification.Action.Builder(action.getIcon(), action.title, PendingIntent.getBroadcast(context, this.mRandom.nextInt(), addFlags, 335544320)).setContextual(true).addExtras(extras).build());
        }
        return arrayList;
    }

    public Notification.Action createDeleteAction(Context context, Resources resources, Uri uri, boolean z) {
        return new Notification.Action.Builder(Icon.createWithResource(resources, R.drawable.ic_screenshot_delete), resources.getString(android.R.string.kg_wrong_pattern), PendingIntent.getBroadcast(context, this.mContext.getUserId(), new Intent(context, (Class<?>) DeleteScreenshotReceiver.class).putExtra("android:screenshot_uri_id", uri.toString()).putExtra("android:screenshot_id", this.mScreenshotId).putExtra("android:smart_actions_enabled", z).addFlags(QuickStepContract.SYSUI_STATE_NAV_BAR_VIS_GONE), 1409286144)).build();
    }

    public Supplier<ScreenshotController.SavedImageData.ActionTransition> createEditAction(Context context, Resources resources, Uri uri, boolean z) {
        return new SaveImageInBackgroundTask$$ExternalSyntheticLambda0(this, context, uri, z, resources);
    }

    public Notification.Action createQuickShareAction(Notification.Action action, String str, Uri uri, long j, Bitmap bitmap, UserHandle userHandle) {
        if (action == null) {
            return null;
        }
        if (action.actionIntent.isImmutable()) {
            Notification.Action queryQuickShareAction = queryQuickShareAction(str, bitmap, userHandle, uri);
            if (queryQuickShareAction == null || !queryQuickShareAction.title.toString().contentEquals(action.title)) {
                return null;
            }
            action = queryQuickShareAction;
        }
        Intent putExtra = new Intent(this.mContext, (Class<?>) SmartActionsReceiver.class).putExtra("android:screenshot_action_intent", action.actionIntent);
        Intent intent = new Intent();
        intent.setType("image/png");
        intent.putExtra("android.intent.extra.STREAM", uri);
        intent.putExtra("android.intent.extra.SUBJECT", getSubjectString(j));
        intent.setClipData(new ClipData(new ClipDescription("content", new String[]{"image/png"}), new ClipData.Item(uri)));
        intent.addFlags(1);
        Intent addFlags = putExtra.putExtra("android:screenshot_action_intent_fillin", intent).addFlags(QuickStepContract.SYSUI_STATE_NAV_BAR_VIS_GONE);
        Bundle extras = action.getExtras();
        addFlags.putExtra("android:screenshot_action_type", extras.getString(ImsManager.INTENT_PARAM_RCS_ENABLE_TYPE, "Smart Action")).putExtra("android:screenshot_id", str).putExtra("android:smart_actions_enabled", true);
        return new Notification.Action.Builder(action.getIcon(), action.title, PendingIntent.getBroadcast(this.mContext, this.mRandom.nextInt(), addFlags, 335544320)).setContextual(true).addExtras(extras).build();
    }

    public Supplier<ScreenshotController.SavedImageData.ActionTransition> createShareAction(Context context, Resources resources, Uri uri, boolean z) {
        return new SaveImageInBackgroundTask$$ExternalSyntheticLambda0(this, uri, context, z, resources);
    }

    @Override // android.os.AsyncTask
    public final Object doInBackground(Object[] objArr) {
        boolean z;
        boolean z2;
        Notification.Action queryQuickShareAction;
        boolean z3;
        String str;
        List<ResolveInfo> queryIntentActivities;
        boolean z4;
        String str2;
        String str3;
        String str4;
        List<ActivityManager.RunningTaskInfo> list;
        if (isCancelled()) {
            return null;
        }
        UUID randomUUID = UUID.randomUUID();
        Thread.currentThread().setPriority(10);
        Bitmap bitmap = this.mParams.image;
        this.mScreenshotId = String.format("Screenshot_%s", randomUUID);
        if (this.mParams.owner != Process.myUserHandle()) {
            z = true;
        } else {
            z = false;
        }
        if (!z && DeviceConfig.getBoolean("systemui", "enable_screenshot_notification_smart_actions", true)) {
            z2 = true;
        } else {
            z2 = false;
        }
        if (z2) {
            try {
                ScreenshotController.SaveImageInBackgroundData saveImageInBackgroundData = this.mParams;
                if (saveImageInBackgroundData.mQuickShareActionsReadyListener != null && (queryQuickShareAction = queryQuickShareAction(this.mScreenshotId, bitmap, saveImageInBackgroundData.owner, null)) != null) {
                    ScreenshotController.QuickShareData quickShareData = this.mQuickShareData;
                    quickShareData.quickShareAction = queryQuickShareAction;
                    ScreenshotController screenshotController = this.mParams.mQuickShareActionsReadyListener.f$0;
                    screenshotController.getClass();
                    if (quickShareData.quickShareAction != null) {
                        screenshotController.mScreenshotHandler.post(new ScreenshotController$$ExternalSyntheticLambda6(screenshotController, quickShareData, 2));
                    }
                }
            } catch (Exception e) {
                z3 = true;
                this.mIsSavingFailed = true;
                Log.d("Screenshot", "Failed to store screenshot", e);
                ScreenshotController.SaveImageInBackgroundData saveImageInBackgroundData2 = this.mParams;
                saveImageInBackgroundData2.image = null;
                ScreenshotController.SavedImageData savedImageData = this.mImageData;
                savedImageData.uri = null;
                savedImageData.shareTransition = null;
                savedImageData.editTransition = null;
                savedImageData.smartActions = null;
                savedImageData.quickShareAction = null;
                savedImageData.subject = null;
                this.mQuickShareData.quickShareAction = null;
                ((ScreenshotController$$ExternalSyntheticLambda2) saveImageInBackgroundData2.mActionsReadyListener).onActionsReady(savedImageData);
                this.mParams.finisher.accept(null);
            }
        }
        String lowerCase = ScreenshotUtils.getScreenshotSaveInfo(this.mContext)[0].toLowerCase();
        String[] screenshotSaveInfo = ScreenshotUtils.getScreenshotSaveInfo(this.mContext);
        if (screenshotSaveInfo[1].isEmpty()) {
            str2 = File.separator;
        } else {
            str2 = screenshotSaveInfo[1];
        }
        Long valueOf = Long.valueOf(System.currentTimeMillis());
        long j = this.mImageTime / 1000;
        if (isFormatPNG(this.mContext)) {
            str3 = "image/png";
        } else {
            str3 = "image/jpeg";
        }
        int width = this.mParams.image.getWidth();
        int height = this.mParams.image.getHeight();
        long length = new File(this.mImageFilePath).length();
        boolean z5 = z2;
        Log.i("Screenshot", "doInBackground:  volumeName=" + lowerCase + " relativePath=" + str2 + " mImageFilePath=" + this.mImageFilePath + " mImageDisplayName=" + this.mImageDisplayName + " mImageFileName=" + this.mImageFileName + " imageTime=" + valueOf + " dateSeconds=" + j + " mimeType=" + str3 + " imageWidth=" + width + " imageHeight=" + height + " size=" + length);
        ImageExporter imageExporter = this.mImageExporter;
        String str5 = this.mImageFilePath;
        String str6 = this.mImageDisplayName;
        long longValue = valueOf.longValue();
        SmartClipDataExtractor.WebData webData = this.mParams.webData;
        imageExporter.getClass();
        ImageExporter.mImageFileRelativePath = str2;
        ImageExporter.mVolumeName = lowerCase;
        ImageExporter.mImageFilePath = str5;
        ImageExporter.mImageDisplayName = str6;
        ImageExporter.mImageFileName = str6;
        ImageExporter.mImageTime = longValue;
        ImageExporter.mSecDate = j;
        ImageExporter.mMimeType = str3;
        ImageExporter.mWidth = width;
        ImageExporter.mHeight = height;
        ImageExporter.mSize = length;
        ImageExporter.screenshotsWebData = webData;
        this.mImageExporter.mCompressFormat = this.mCompressFormat;
        JSONObject jSONObject = new JSONObject();
        Context context = this.mContext;
        if (context != null) {
            try {
                list = ((ActivityManager) context.getSystemService("activity")).getRunningTasks(2);
            } catch (Exception e2) {
                Log.e("Screenshot", e2.toString());
                list = null;
            }
            if (list != null && !list.isEmpty()) {
                for (int i = 0; i < list.size(); i++) {
                    ComponentName componentName = list.get(i).topActivity;
                    if (componentName != null) {
                        str4 = componentName.flattenToShortString();
                        break;
                    }
                }
            }
        }
        str4 = null;
        jSONObject.put("comp", str4);
        String encodeToString = Base64.encodeToString(jSONObject.toString().getBytes(), 2);
        this.mImageExporter.getClass();
        ImageExporter.mCapturedAppInfo = encodeToString;
        ImageExporter imageExporter2 = this.mImageExporter;
        ProfileInstaller$$ExternalSyntheticLambda0 profileInstaller$$ExternalSyntheticLambda0 = new ProfileInstaller$$ExternalSyntheticLambda0();
        UserHandle userHandle = this.mParams.owner;
        imageExporter2.getClass();
        ImageExporter.Result result = (ImageExporter.Result) imageExporter2.export(profileInstaller$$ExternalSyntheticLambda0, randomUUID, bitmap, ZonedDateTime.now(), userHandle).get();
        Log.d("Screenshot", "Saved screenshot: " + result);
        Uri uri = result.uri;
        this.mImageTime = result.timestamp;
        ScreenshotSmartActions screenshotSmartActions = this.mScreenshotSmartActions;
        ScreenshotNotificationSmartActionsProvider screenshotNotificationSmartActionsProvider = this.mSmartActionsProvider;
        ScreenshotNotificationSmartActionsProvider.ScreenshotSmartActionType screenshotSmartActionType = ScreenshotNotificationSmartActionsProvider.ScreenshotSmartActionType.REGULAR_SMART_ACTIONS;
        UserHandle userHandle2 = this.mParams.owner;
        screenshotSmartActions.getClass();
        CompletableFuture smartActionsFuture = ScreenshotSmartActions.getSmartActionsFuture(bitmap, screenshotNotificationSmartActionsProvider, z5);
        ArrayList arrayList = new ArrayList();
        if (z5) {
            int i2 = DeviceConfig.getInt("systemui", "screenshot_notification_smart_actions_timeout_ms", 1000);
            ScreenshotSmartActions screenshotSmartActions2 = this.mScreenshotSmartActions;
            ScreenshotNotificationSmartActionsProvider screenshotNotificationSmartActionsProvider2 = this.mSmartActionsProvider;
            screenshotSmartActions2.getClass();
            arrayList.addAll(buildSmartActions(this.mContext, ScreenshotSmartActions.getSmartActions(smartActionsFuture, i2, screenshotNotificationSmartActionsProvider2)));
        }
        ScreenshotController.SavedImageData savedImageData2 = this.mImageData;
        savedImageData2.uri = uri;
        savedImageData2.owner = this.mParams.owner;
        savedImageData2.smartActions = arrayList;
        Context context2 = this.mContext;
        savedImageData2.shareTransition = createShareAction(context2, context2.getResources(), uri, z5);
        ScreenshotController.SavedImageData savedImageData3 = this.mImageData;
        Context context3 = this.mContext;
        savedImageData3.editTransition = createEditAction(context3, context3.getResources(), uri, z5);
        ScreenshotController.SavedImageData savedImageData4 = this.mImageData;
        Context context4 = this.mContext;
        createDeleteAction(context4, context4.getResources(), uri, z5);
        savedImageData4.getClass();
        this.mImageData.quickShareAction = createQuickShareAction(this.mQuickShareData.quickShareAction, this.mScreenshotId, uri, this.mImageTime, bitmap, this.mParams.owner);
        this.mImageData.subject = getSubjectString(this.mImageTime);
        ((ScreenshotController$$ExternalSyntheticLambda2) this.mParams.mActionsReadyListener).onActionsReady(this.mImageData);
        this.mParams.finisher.accept(this.mImageData.uri);
        this.mParams.image = null;
        z3 = true;
        RemoteScrollCaptureInterface remoteScrollCaptureInterface = this.mScrollCaptureInterface;
        if (remoteScrollCaptureInterface != null) {
            synchronized (remoteScrollCaptureInterface) {
                if (!this.mIsScrollCaptureConnectionListenerInvoked) {
                    long currentTimeMillis = System.currentTimeMillis();
                    try {
                        this.mScrollCaptureInterface.wait(1000L);
                    } catch (InterruptedException e3) {
                        Log.e("Screenshot", "doInBackground : Exception thrown during waiting ScrollCapture connection. e=" + e3, e3);
                    }
                    Log.i("Screenshot", "doInBackground : ScrollCapture connection waiting time = " + (System.currentTimeMillis() - currentTimeMillis));
                }
            }
        }
        Bundle bundle = new Bundle();
        bundle.putCharSequenceArrayList("notifiedApps", (ArrayList) this.mParams.notifiedApps);
        RemoteScrollCaptureInterface remoteScrollCaptureInterface2 = this.mScrollCaptureInterface;
        if (remoteScrollCaptureInterface2 != null) {
            long j2 = this.mScrollCaptureTransactionId;
            String str7 = this.mImageFilePath;
            Log.d("[ScrCap]_RemoteScrollCaptureInterface", "notifyGlobalScreenshotFinished");
            IScrollCaptureService iScrollCaptureService = remoteScrollCaptureInterface2.mService;
            if (iScrollCaptureService != null) {
                z4 = z3;
            } else {
                z4 = false;
            }
            if (!z4) {
                Log.e("[ScrCap]_RemoteScrollCaptureInterface", "notifyGlobalScreenshotFinished : No service connection");
            } else {
                try {
                    ((IScrollCaptureService.Stub.Proxy) iScrollCaptureService).onGlobalScreenshotFinished(j2, str7, bundle);
                } catch (Exception e4) {
                    Log.e("[ScrCap]_RemoteScrollCaptureInterface", "notifyGlobalScreenshotFinished : e=" + e4);
                    e4.printStackTrace();
                }
            }
            this.mScrollCaptureInterface.disconnect();
        }
        if (this.mIsSavingFailed) {
            Log.e("Screenshot", "Failed to save screenshot");
        } else if (this.mIsBixbyCaptureShared) {
            Context context5 = this.mContext;
            String str8 = this.mBixbyCaptureSharedPackageName;
            String str9 = this.mBixbyCaptureSharedActivityName;
            Uri uri2 = this.mImageData.uri;
            StringBuilder m = KeyguardUpdateMonitorLogger$logAssistantVisible$2$$ExternalSyntheticOutline0.m("startChooserActivity packageName : ", str8, ", activityName : ", str9, ", imageUri : ");
            m.append(uri2);
            Log.i("Screenshot", m.toString());
            if (uri2 != null) {
                Intent intent = new Intent("android.intent.action.SEND");
                boolean isFormatPNG = isFormatPNG(context5);
                if (str8 != null) {
                    if (str9 != null) {
                        intent.setComponent(new ComponentName(str8, str9));
                    } else {
                        intent.setPackage(str8);
                    }
                }
                String str10 = "image/png";
                if (isFormatPNG) {
                    str = "image/png";
                } else {
                    str = "image/jpeg";
                }
                intent.setType(str);
                intent.putExtra("android.intent.extra.STREAM", uri2);
                intent.addFlags(QuickStepContract.SYSUI_STATE_NAV_BAR_VIS_GONE);
                intent.addFlags(185073665);
                if (str8 != null) {
                    PackageManager packageManager = context5.getPackageManager();
                    if (packageManager == null || (queryIntentActivities = packageManager.queryIntentActivities(intent, 0)) == null || queryIntentActivities.size() <= 0) {
                        z3 = false;
                    }
                    if (z3) {
                        context5.startActivity(intent);
                    }
                }
                Intent intent2 = new Intent("android.intent.action.SEND");
                if (!isFormatPNG) {
                    str10 = "image/jpeg";
                }
                intent2.setType(str10);
                intent2.putExtra("android.intent.extra.STREAM", uri2);
                Intent createChooser = Intent.createChooser(intent2, null);
                createChooser.addFlags(QuickStepContract.SYSUI_STATE_NAV_BAR_VIS_GONE);
                createChooser.addFlags(185073665);
                context5.startActivity(createChooser);
                return null;
            }
        }
        return null;
    }

    @Override // android.os.AsyncTask
    public final void onCancelled(Object obj) {
        ScreenshotController.SavedImageData savedImageData = this.mImageData;
        savedImageData.uri = null;
        savedImageData.shareTransition = null;
        savedImageData.editTransition = null;
        savedImageData.smartActions = null;
        savedImageData.quickShareAction = null;
        savedImageData.subject = null;
        this.mQuickShareData.quickShareAction = null;
        ((ScreenshotController$$ExternalSyntheticLambda2) this.mParams.mActionsReadyListener).onActionsReady(savedImageData);
        this.mParams.finisher.accept(null);
        this.mParams.image = null;
    }

    public Notification.Action queryQuickShareAction(String str, Bitmap bitmap, UserHandle userHandle, Uri uri) {
        ScreenshotSmartActions screenshotSmartActions = this.mScreenshotSmartActions;
        ScreenshotNotificationSmartActionsProvider screenshotNotificationSmartActionsProvider = this.mSmartActionsProvider;
        ScreenshotNotificationSmartActionsProvider.ScreenshotSmartActionType screenshotSmartActionType = ScreenshotNotificationSmartActionsProvider.ScreenshotSmartActionType.REGULAR_SMART_ACTIONS;
        screenshotSmartActions.getClass();
        CompletableFuture smartActionsFuture = ScreenshotSmartActions.getSmartActionsFuture(bitmap, screenshotNotificationSmartActionsProvider, true);
        int i = DeviceConfig.getInt("systemui", "screenshot_notification_quick_share_actions_timeout_ms", 500);
        ScreenshotSmartActions screenshotSmartActions2 = this.mScreenshotSmartActions;
        ScreenshotNotificationSmartActionsProvider screenshotNotificationSmartActionsProvider2 = this.mSmartActionsProvider;
        screenshotSmartActions2.getClass();
        List smartActions = ScreenshotSmartActions.getSmartActions(smartActionsFuture, i, screenshotNotificationSmartActionsProvider2);
        if (!smartActions.isEmpty()) {
            return (Notification.Action) smartActions.get(0);
        }
        return null;
    }
}
