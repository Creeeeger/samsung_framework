.class public final Lcom/android/systemui/coverlauncher/utils/CoverLauncherWidgetOptions;
.super Ljava/lang/Object;
.source "qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f"


# instance fields
.field public mAppIconPkgOption:Ljava/lang/String;

.field public final mType:I

.field public mUiModeOption:I

.field public mVisibleOption:Z


# direct methods
.method public constructor <init>(ZLjava/lang/String;II)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-boolean p1, p0, Lcom/android/systemui/coverlauncher/utils/CoverLauncherWidgetOptions;->mVisibleOption:Z

    .line 5
    .line 6
    iput-object p2, p0, Lcom/android/systemui/coverlauncher/utils/CoverLauncherWidgetOptions;->mAppIconPkgOption:Ljava/lang/String;

    .line 7
    .line 8
    iput p3, p0, Lcom/android/systemui/coverlauncher/utils/CoverLauncherWidgetOptions;->mUiModeOption:I

    .line 9
    .line 10
    iput p4, p0, Lcom/android/systemui/coverlauncher/utils/CoverLauncherWidgetOptions;->mType:I

    .line 11
    .line 12
    return-void
.end method
