.class public final Lcom/android/systemui/screenshot/ScreenshotController$SaveImageInBackgroundData;
.super Ljava/lang/Object;
.source "qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f"


# instance fields
.field public captureHelper:Lcom/android/systemui/screenshot/sep/ScreenCaptureHelper;

.field public finisher:Ljava/util/function/Consumer;

.field public image:Landroid/graphics/Bitmap;

.field public mActionsReadyListener:Lcom/android/systemui/screenshot/ScreenshotController$ActionsReadyListener;

.field public mQuickShareActionsReadyListener:Lcom/android/systemui/screenshot/ScreenshotController$$ExternalSyntheticLambda2;

.field public notifiedApps:Ljava/util/List;

.field public owner:Landroid/os/UserHandle;

.field public webData:Lcom/android/systemui/screenshot/sep/SmartClipDataExtractor$WebData;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
