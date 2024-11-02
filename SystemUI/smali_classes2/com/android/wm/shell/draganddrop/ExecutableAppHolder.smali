.class public final Lcom/android/wm/shell/draganddrop/ExecutableAppHolder;
.super Ljava/lang/Object;
.source "qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f"


# static fields
.field public static final DEBUG:Z


# instance fields
.field public final mAppResultFactory:Lcom/android/wm/shell/draganddrop/AppResultFactory;

.field public final mCallbacks:Ljava/util/List;

.field public final mCallingPackageBlockList:Lcom/android/wm/shell/draganddrop/ExecutableAppHolder$PolicyExceptionList;

.field public mCallingPackageName:Ljava/lang/String;

.field public mCallingUserId:I

.field public final mContext:Landroid/content/Context;

.field public mExecutableApp:Lcom/android/wm/shell/draganddrop/AppInfo;

.field public final mExecutableAppMap:Ljava/util/Map;

.field public mIsMimeType:Z

.field public final mMultiInstanceAllowList:Lcom/android/wm/shell/draganddrop/ExecutableAppHolder$MultiInstanceAllowList;

.field public final mMultiInstanceBlockList:Lcom/android/wm/shell/draganddrop/ExecutableAppHolder$MultiInstanceBlockList;

.field public mResult:Lcom/android/wm/shell/draganddrop/AppResult;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 1
    sget-boolean v0, Lcom/samsung/android/rune/CoreRune;->SAFE_DEBUG:Z

    .line 2
    .line 3
    sput-boolean v0, Lcom/android/wm/shell/draganddrop/ExecutableAppHolder;->DEBUG:Z

    .line 4
    .line 5
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 5

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Ljava/util/HashMap;

    .line 5
    .line 6
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 7
    .line 8
    .line 9
    iput-object v0, p0, Lcom/android/wm/shell/draganddrop/ExecutableAppHolder;->mExecutableAppMap:Ljava/util/Map;

    .line 10
    .line 11
    new-instance v0, Ljava/util/ArrayList;

    .line 12
    .line 13
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 14
    .line 15
    .line 16
    iput-object v0, p0, Lcom/android/wm/shell/draganddrop/ExecutableAppHolder;->mCallbacks:Ljava/util/List;

    .line 17
    .line 18
    iput-object p1, p0, Lcom/android/wm/shell/draganddrop/ExecutableAppHolder;->mContext:Landroid/content/Context;

    .line 19
    .line 20
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    .line 21
    .line 22
    .line 23
    new-instance v0, Lcom/android/wm/shell/draganddrop/ExecutableAppHolder$MultiInstanceBlockList;

    .line 24
    .line 25
    invoke-direct {v0, p1}, Lcom/android/wm/shell/draganddrop/ExecutableAppHolder$MultiInstanceBlockList;-><init>(Landroid/content/Context;)V

    .line 26
    .line 27
    .line 28
    iput-object v0, p0, Lcom/android/wm/shell/draganddrop/ExecutableAppHolder;->mMultiInstanceBlockList:Lcom/android/wm/shell/draganddrop/ExecutableAppHolder$MultiInstanceBlockList;

    .line 29
    .line 30
    new-instance v1, Lcom/android/wm/shell/draganddrop/ExecutableAppHolder$MultiInstanceAllowList;

    .line 31
    .line 32
    invoke-direct {v1, p1}, Lcom/android/wm/shell/draganddrop/ExecutableAppHolder$MultiInstanceAllowList;-><init>(Landroid/content/Context;)V

    .line 33
    .line 34
    .line 35
    iput-object v1, p0, Lcom/android/wm/shell/draganddrop/ExecutableAppHolder;->mMultiInstanceAllowList:Lcom/android/wm/shell/draganddrop/ExecutableAppHolder$MultiInstanceAllowList;

    .line 36
    .line 37
    new-instance v2, Lcom/android/wm/shell/draganddrop/ExecutableAppHolder$PolicyExceptionList;

    .line 38
    .line 39
    const v3, 0x7f03004d

    .line 40
    .line 41
    .line 42
    const/4 v4, 0x0

    .line 43
    invoke-direct {v2, p1, v3, v4}, Lcom/android/wm/shell/draganddrop/ExecutableAppHolder$PolicyExceptionList;-><init>(Landroid/content/Context;IZ)V

    .line 44
    .line 45
    .line 46
    iput-object v2, p0, Lcom/android/wm/shell/draganddrop/ExecutableAppHolder;->mCallingPackageBlockList:Lcom/android/wm/shell/draganddrop/ExecutableAppHolder$PolicyExceptionList;

    .line 47
    .line 48
    new-instance v2, Lcom/android/wm/shell/draganddrop/AppResultFactory;

    .line 49
    .line 50
    invoke-direct {v2, p1, v0, v1}, Lcom/android/wm/shell/draganddrop/AppResultFactory;-><init>(Landroid/content/Context;Lcom/android/wm/shell/draganddrop/ExecutableAppHolder$MultiInstanceBlockList;Lcom/android/wm/shell/draganddrop/ExecutableAppHolder$MultiInstanceAllowList;)V

    .line 51
    .line 52
    .line 53
    iput-object v2, p0, Lcom/android/wm/shell/draganddrop/ExecutableAppHolder;->mAppResultFactory:Lcom/android/wm/shell/draganddrop/AppResultFactory;

    .line 54
    .line 55
    return-void
.end method
