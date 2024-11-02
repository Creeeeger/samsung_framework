.class public Lcom/android/systemui/plugins/omni/AssistStateManager;
.super Ljava/lang/Object;
.source "qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f"

# interfaces
.implements Landroid/media/permission/SafeCloseable;


# static fields
.field private static COMPONENT_NAME_GOOGLE_SEARCH:Landroid/content/ComponentName; = null

.field private static COMPONENT_NAME_GOOGLE_SEARCH_INTRO:Landroid/content/ComponentName; = null

.field public static final DEBUG:Z = false

.field public static GOOGLE_SEARCH_ACTIVITY:Ljava/lang/String; = "com.google.android.apps.search.omnient.host.activity.OmnientActivity"

.field public static GOOGLE_SEARCH_INTRO_ACTIVITY:Ljava/lang/String; = "com.google.android.apps.search.omnient.onboarding.ui.OnboardingActivity"

.field public static final INSTANCE:Lcom/android/systemui/plugins/omni/MainThreadInitializedObject;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/systemui/plugins/omni/MainThreadInitializedObject<",
            "Lcom/android/systemui/plugins/omni/AssistStateManager;",
            ">;"
        }
    .end annotation
.end field

.field private static final KEEP_ALIVE:I = 0x1

.field private static final OMNI_APP_SEARCH_CS_HELPER_AVAILABLE_PROPERTY:Ljava/lang/String; = "isCSHelperAvailable"

.field private static final OMNI_APP_SEARCH_DATABASE:Ljava/lang/String; = "OmniEntryPoint"

.field private static final OMNI_APP_SEARCH_ID:Ljava/lang/String; = "entry_point"

.field private static final OMNI_APP_SEARCH_NAMESPACE:Ljava/lang/String; = "omni"

.field private static final OMNI_APP_SEARCH_PROPERTY:Ljava/lang/String; = "isAvailable"

.field private static final OMNI_APP_SEARCH_VIS_AVAILABLE_PROPERTY:Ljava/lang/String; = "isVISAvailable"

.field public static final OMNI_PACKAGE:Ljava/lang/String; = "com.google.android.googlequicksearchbox"

.field private static final OMNI_PROPERTY:Ljava/lang/String; = "omni.AWARE"

.field private static final POOL_SIZE:I

.field private static final TAG:Ljava/lang/String; = "AssistStateManager"

.field public static final THREAD_POOL_EXECUTOR:Ljava/util/concurrent/ThreadPoolExecutor;


# instance fields
.field private final mContext:Landroid/content/Context;

.field private final mGetByDocumentIdRequest:Landroid/app/appsearch/GetByDocumentIdRequest;

.field private mGlobalSearchSessionFuture:Ljava/util/concurrent/CompletableFuture;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/CompletableFuture<",
            "Landroid/app/appsearch/GlobalSearchSession;",
            ">;"
        }
    .end annotation
.end field

.field private mIsCsHelperAvailable:Ljava/util/Optional;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Optional<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private mIsInMultiWindow:Z

.field private mIsInitSession:Z

.field private mIsOmniAvailable:Z

.field private mIsOmniAware:Z

.field private mIsOmniPackageEnabled:Z

.field private mIsVisAvailable:Ljava/util/Optional;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Optional<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private final mObserverCallback:Landroid/app/appsearch/observer/ObserverCallback;

.field private final mOmniPackageReceiver:Lcom/android/systemui/plugins/omni/SimpleBroadcastReceiver;


# direct methods
.method public static synthetic $r8$lambda$-_vscwKL4X0Hf3NcqHAIye3i8pc(Ljava/lang/Throwable;)Ljava/lang/Void;
    .locals 0

    .line 1
    invoke-static {p0}, Lcom/android/systemui/plugins/omni/AssistStateManager;->lambda$updateIsOmniAvailableFromAppSearch$5(Ljava/lang/Throwable;)Ljava/lang/Void;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static synthetic $r8$lambda$AKOqKJSAJh6fQv6GlSYa4LUKf4o(Lcom/android/systemui/plugins/omni/AssistStateManager;Ljava/util/function/Consumer;Landroid/app/appsearch/AppSearchResult;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/android/systemui/plugins/omni/AssistStateManager;->lambda$initGlobalSearchSession$2(Ljava/util/function/Consumer;Landroid/app/appsearch/AppSearchResult;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static synthetic $r8$lambda$WbbSkYXr1WzVSXCz07fvbw6A3Yo(Lcom/android/systemui/plugins/omni/AssistStateManager;Landroid/app/appsearch/GlobalSearchSession;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/android/systemui/plugins/omni/AssistStateManager;->lambda$closeGlobalSearchSession$1(Landroid/app/appsearch/GlobalSearchSession;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static synthetic $r8$lambda$nhD7AMvxZ_y8zgsGHlZZYTM2qjs(Lcom/android/systemui/plugins/omni/AssistStateManager;Landroid/content/Intent;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/android/systemui/plugins/omni/AssistStateManager;->lambda$new$0(Landroid/content/Intent;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static synthetic $r8$lambda$p_L1KpbCaNLqZ-YqNIPU3sdUjKw(Lcom/android/systemui/plugins/omni/AssistStateManager;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/android/systemui/plugins/omni/AssistStateManager;->lambda$requestUpdateOmniPackageInfo$3()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static synthetic $r8$lambda$q9fEfm8Tlfk2rlNY_eYcW4qeT3U(Landroid/content/Context;)Lcom/android/systemui/plugins/omni/AssistStateManager;
    .locals 1

    .line 1
    new-instance v0, Lcom/android/systemui/plugins/omni/AssistStateManager;

    .line 2
    .line 3
    invoke-direct {v0, p0}, Lcom/android/systemui/plugins/omni/AssistStateManager;-><init>(Landroid/content/Context;)V

    .line 4
    .line 5
    .line 6
    return-object v0
.end method

.method public static synthetic $r8$lambda$yZKM7VlqkA7_dyZd2XuRyVElBLs(Lcom/android/systemui/plugins/omni/AssistStateManager;Ljava/util/function/Consumer;Landroid/app/appsearch/GlobalSearchSession;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/android/systemui/plugins/omni/AssistStateManager;->lambda$updateIsOmniAvailableFromAppSearch$4(Ljava/util/function/Consumer;Landroid/app/appsearch/GlobalSearchSession;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static bridge synthetic -$$Nest$fgetmIsCsHelperAvailable(Lcom/android/systemui/plugins/omni/AssistStateManager;)Ljava/util/Optional;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/systemui/plugins/omni/AssistStateManager;->mIsCsHelperAvailable:Ljava/util/Optional;

    .line 2
    .line 3
    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmIsOmniAvailable(Lcom/android/systemui/plugins/omni/AssistStateManager;)Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lcom/android/systemui/plugins/omni/AssistStateManager;->mIsOmniAvailable:Z

    .line 2
    .line 3
    return p0
.end method

.method public static bridge synthetic -$$Nest$fgetmIsVisAvailable(Lcom/android/systemui/plugins/omni/AssistStateManager;)Ljava/util/Optional;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/systemui/plugins/omni/AssistStateManager;->mIsVisAvailable:Ljava/util/Optional;

    .line 2
    .line 3
    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fputmIsCsHelperAvailable(Lcom/android/systemui/plugins/omni/AssistStateManager;Ljava/util/Optional;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/systemui/plugins/omni/AssistStateManager;->mIsCsHelperAvailable:Ljava/util/Optional;

    .line 2
    .line 3
    return-void
.end method

.method public static bridge synthetic -$$Nest$fputmIsOmniAvailable(Lcom/android/systemui/plugins/omni/AssistStateManager;Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/android/systemui/plugins/omni/AssistStateManager;->mIsOmniAvailable:Z

    .line 2
    .line 3
    return-void
.end method

.method public static bridge synthetic -$$Nest$fputmIsVisAvailable(Lcom/android/systemui/plugins/omni/AssistStateManager;Ljava/util/Optional;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/systemui/plugins/omni/AssistStateManager;->mIsVisAvailable:Ljava/util/Optional;

    .line 2
    .line 3
    return-void
.end method

.method public static constructor <clinit>()V
    .locals 9

    .line 1
    new-instance v0, Landroid/content/ComponentName;

    .line 2
    .line 3
    sget-object v1, Lcom/android/systemui/plugins/omni/AssistStateManager;->GOOGLE_SEARCH_ACTIVITY:Ljava/lang/String;

    .line 4
    .line 5
    const-string v2, "com.google.android.googlequicksearchbox"

    .line 6
    .line 7
    invoke-direct {v0, v2, v1}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 8
    .line 9
    .line 10
    sput-object v0, Lcom/android/systemui/plugins/omni/AssistStateManager;->COMPONENT_NAME_GOOGLE_SEARCH:Landroid/content/ComponentName;

    .line 11
    .line 12
    new-instance v0, Landroid/content/ComponentName;

    .line 13
    .line 14
    sget-object v1, Lcom/android/systemui/plugins/omni/AssistStateManager;->GOOGLE_SEARCH_INTRO_ACTIVITY:Ljava/lang/String;

    .line 15
    .line 16
    invoke-direct {v0, v2, v1}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 17
    .line 18
    .line 19
    sput-object v0, Lcom/android/systemui/plugins/omni/AssistStateManager;->COMPONENT_NAME_GOOGLE_SEARCH_INTRO:Landroid/content/ComponentName;

    .line 20
    .line 21
    new-instance v0, Lcom/android/systemui/plugins/omni/MainThreadInitializedObject;

    .line 22
    .line 23
    new-instance v1, Lcom/android/systemui/plugins/omni/AssistStateManager$$ExternalSyntheticLambda4;

    .line 24
    .line 25
    invoke-direct {v1}, Lcom/android/systemui/plugins/omni/AssistStateManager$$ExternalSyntheticLambda4;-><init>()V

    .line 26
    .line 27
    .line 28
    invoke-direct {v0, v1}, Lcom/android/systemui/plugins/omni/MainThreadInitializedObject;-><init>(Lcom/android/systemui/plugins/omni/MainThreadInitializedObject$ObjectProvider;)V

    .line 29
    .line 30
    .line 31
    sput-object v0, Lcom/android/systemui/plugins/omni/AssistStateManager;->INSTANCE:Lcom/android/systemui/plugins/omni/MainThreadInitializedObject;

    .line 32
    .line 33
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    .line 34
    .line 35
    .line 36
    move-result-object v0

    .line 37
    invoke-virtual {v0}, Ljava/lang/Runtime;->availableProcessors()I

    .line 38
    .line 39
    .line 40
    move-result v0

    .line 41
    const/4 v1, 0x2

    .line 42
    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    .line 43
    .line 44
    .line 45
    move-result v4

    .line 46
    sput v4, Lcom/android/systemui/plugins/omni/AssistStateManager;->POOL_SIZE:I

    .line 47
    .line 48
    new-instance v0, Ljava/util/concurrent/ThreadPoolExecutor;

    .line 49
    .line 50
    const-wide/16 v5, 0x1

    .line 51
    .line 52
    sget-object v7, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    .line 53
    .line 54
    new-instance v8, Ljava/util/concurrent/LinkedBlockingQueue;

    .line 55
    .line 56
    invoke-direct {v8}, Ljava/util/concurrent/LinkedBlockingQueue;-><init>()V

    .line 57
    .line 58
    .line 59
    move-object v2, v0

    .line 60
    move v3, v4

    .line 61
    invoke-direct/range {v2 .. v8}, Ljava/util/concurrent/ThreadPoolExecutor;-><init>(IIJLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/BlockingQueue;)V

    .line 62
    .line 63
    .line 64
    sput-object v0, Lcom/android/systemui/plugins/omni/AssistStateManager;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/ThreadPoolExecutor;

    .line 65
    .line 66
    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .locals 3

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Ljava/util/concurrent/CompletableFuture;

    .line 5
    .line 6
    invoke-direct {v0}, Ljava/util/concurrent/CompletableFuture;-><init>()V

    .line 7
    .line 8
    .line 9
    iput-object v0, p0, Lcom/android/systemui/plugins/omni/AssistStateManager;->mGlobalSearchSessionFuture:Ljava/util/concurrent/CompletableFuture;

    .line 10
    .line 11
    new-instance v0, Landroid/app/appsearch/GetByDocumentIdRequest$Builder;

    .line 12
    .line 13
    const-string v1, "omni"

    .line 14
    .line 15
    invoke-direct {v0, v1}, Landroid/app/appsearch/GetByDocumentIdRequest$Builder;-><init>(Ljava/lang/String;)V

    .line 16
    .line 17
    .line 18
    const-string v1, "entry_point"

    .line 19
    .line 20
    filled-new-array {v1}, [Ljava/lang/String;

    .line 21
    .line 22
    .line 23
    move-result-object v1

    .line 24
    invoke-virtual {v0, v1}, Landroid/app/appsearch/GetByDocumentIdRequest$Builder;->addIds([Ljava/lang/String;)Landroid/app/appsearch/GetByDocumentIdRequest$Builder;

    .line 25
    .line 26
    .line 27
    move-result-object v0

    .line 28
    invoke-virtual {v0}, Landroid/app/appsearch/GetByDocumentIdRequest$Builder;->build()Landroid/app/appsearch/GetByDocumentIdRequest;

    .line 29
    .line 30
    .line 31
    move-result-object v0

    .line 32
    iput-object v0, p0, Lcom/android/systemui/plugins/omni/AssistStateManager;->mGetByDocumentIdRequest:Landroid/app/appsearch/GetByDocumentIdRequest;

    .line 33
    .line 34
    const/4 v0, 0x0

    .line 35
    iput-boolean v0, p0, Lcom/android/systemui/plugins/omni/AssistStateManager;->mIsOmniAvailable:Z

    .line 36
    .line 37
    iput-boolean v0, p0, Lcom/android/systemui/plugins/omni/AssistStateManager;->mIsOmniAware:Z

    .line 38
    .line 39
    invoke-static {}, Ljava/util/Optional;->empty()Ljava/util/Optional;

    .line 40
    .line 41
    .line 42
    move-result-object v1

    .line 43
    iput-object v1, p0, Lcom/android/systemui/plugins/omni/AssistStateManager;->mIsCsHelperAvailable:Ljava/util/Optional;

    .line 44
    .line 45
    invoke-static {}, Ljava/util/Optional;->empty()Ljava/util/Optional;

    .line 46
    .line 47
    .line 48
    move-result-object v1

    .line 49
    iput-object v1, p0, Lcom/android/systemui/plugins/omni/AssistStateManager;->mIsVisAvailable:Ljava/util/Optional;

    .line 50
    .line 51
    const/4 v1, 0x1

    .line 52
    iput-boolean v1, p0, Lcom/android/systemui/plugins/omni/AssistStateManager;->mIsOmniPackageEnabled:Z

    .line 53
    .line 54
    iput-boolean v1, p0, Lcom/android/systemui/plugins/omni/AssistStateManager;->mIsInMultiWindow:Z

    .line 55
    .line 56
    new-instance v1, Lcom/android/systemui/plugins/omni/SimpleBroadcastReceiver;

    .line 57
    .line 58
    new-instance v2, Lcom/android/systemui/plugins/omni/AssistStateManager$$ExternalSyntheticLambda0;

    .line 59
    .line 60
    invoke-direct {v2, p0, v0}, Lcom/android/systemui/plugins/omni/AssistStateManager$$ExternalSyntheticLambda0;-><init>(Lcom/android/systemui/plugins/omni/AssistStateManager;I)V

    .line 61
    .line 62
    .line 63
    invoke-direct {v1, v2}, Lcom/android/systemui/plugins/omni/SimpleBroadcastReceiver;-><init>(Ljava/util/function/Consumer;)V

    .line 64
    .line 65
    .line 66
    iput-object v1, p0, Lcom/android/systemui/plugins/omni/AssistStateManager;->mOmniPackageReceiver:Lcom/android/systemui/plugins/omni/SimpleBroadcastReceiver;

    .line 67
    .line 68
    iput-boolean v0, p0, Lcom/android/systemui/plugins/omni/AssistStateManager;->mIsInitSession:Z

    .line 69
    .line 70
    iput-object p1, p0, Lcom/android/systemui/plugins/omni/AssistStateManager;->mContext:Landroid/content/Context;

    .line 71
    .line 72
    new-instance v0, Lcom/android/systemui/plugins/omni/AssistStateManager$1;

    .line 73
    .line 74
    invoke-direct {v0, p0}, Lcom/android/systemui/plugins/omni/AssistStateManager$1;-><init>(Lcom/android/systemui/plugins/omni/AssistStateManager;)V

    .line 75
    .line 76
    .line 77
    iput-object v0, p0, Lcom/android/systemui/plugins/omni/AssistStateManager;->mObserverCallback:Landroid/app/appsearch/observer/ObserverCallback;

    .line 78
    .line 79
    const/4 v0, 0x0

    .line 80
    invoke-direct {p0, p1, v0}, Lcom/android/systemui/plugins/omni/AssistStateManager;->initGlobalSearchSession(Landroid/content/Context;Ljava/util/function/Consumer;)V

    .line 81
    .line 82
    .line 83
    invoke-virtual {p0, v0}, Lcom/android/systemui/plugins/omni/AssistStateManager;->updateIsOmniAvailableFromAppSearch(Ljava/util/function/Consumer;)V

    .line 84
    .line 85
    .line 86
    invoke-direct {p0}, Lcom/android/systemui/plugins/omni/AssistStateManager;->requestUpdateOmniPackageInfo()V

    .line 87
    .line 88
    .line 89
    const-string p0, "android.intent.action.PACKAGE_CHANGED"

    .line 90
    .line 91
    const-string v0, "android.intent.action.PACKAGE_REMOVED"

    .line 92
    .line 93
    const-string v2, "android.intent.action.PACKAGE_ADDED"

    .line 94
    .line 95
    filled-new-array {v2, p0, v0}, [Ljava/lang/String;

    .line 96
    .line 97
    .line 98
    move-result-object p0

    .line 99
    const-string v0, "com.google.android.googlequicksearchbox"

    .line 100
    .line 101
    invoke-virtual {v1, p1, v0, p0}, Lcom/android/systemui/plugins/omni/SimpleBroadcastReceiver;->registerPkgActions(Landroid/content/Context;Ljava/lang/String;[Ljava/lang/String;)V

    .line 102
    .line 103
    .line 104
    return-void
.end method

.method private getActivityInfo(Landroid/content/ComponentName;)Landroid/content/pm/ActivityInfo;
    .locals 1

    .line 1
    :try_start_0
    iget-object p0, p0, Lcom/android/systemui/plugins/omni/AssistStateManager;->mContext:Landroid/content/Context;

    .line 2
    .line 3
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    const/16 v0, 0x80

    .line 8
    .line 9
    invoke-virtual {p0, p1, v0}, Landroid/content/pm/PackageManager;->getActivityInfo(Landroid/content/ComponentName;I)Landroid/content/pm/ActivityInfo;

    .line 10
    .line 11
    .line 12
    move-result-object p0
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 13
    return-object p0

    .line 14
    :catch_0
    move-exception p0

    .line 15
    invoke-virtual {p0}, Landroid/content/pm/PackageManager$NameNotFoundException;->printStackTrace()V

    .line 16
    .line 17
    .line 18
    const/4 p0, 0x0

    .line 19
    return-object p0
.end method

.method private initGlobalSearchSession(Landroid/content/Context;Ljava/util/function/Consumer;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/function/Consumer<",
            "Ljava/lang/Boolean;",
            ">;)V"
        }
    .end annotation

    .line 1
    const-class v0, Landroid/app/appsearch/AppSearchManager;

    .line 2
    .line 3
    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    check-cast p1, Landroid/app/appsearch/AppSearchManager;

    .line 8
    .line 9
    new-instance v0, Lcom/android/systemui/plugins/omni/AssistStateManager$$ExternalSyntheticLambda2;

    .line 10
    .line 11
    const/4 v1, 0x2

    .line 12
    invoke-direct {v0, v1}, Lcom/android/systemui/plugins/omni/AssistStateManager$$ExternalSyntheticLambda2;-><init>(I)V

    .line 13
    .line 14
    .line 15
    new-instance v1, Lcom/android/systemui/plugins/omni/AssistStateManager$$ExternalSyntheticLambda1;

    .line 16
    .line 17
    const/4 v2, 0x1

    .line 18
    invoke-direct {v1, p0, p2, v2}, Lcom/android/systemui/plugins/omni/AssistStateManager$$ExternalSyntheticLambda1;-><init>(Lcom/android/systemui/plugins/omni/AssistStateManager;Ljava/util/function/Consumer;I)V

    .line 19
    .line 20
    .line 21
    invoke-virtual {p1, v0, v1}, Landroid/app/appsearch/AppSearchManager;->createGlobalSearchSession(Ljava/util/concurrent/Executor;Ljava/util/function/Consumer;)V

    .line 22
    .line 23
    .line 24
    return-void
.end method

.method private isInMultiWindowMode(Landroid/content/ComponentName;)Z
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/android/systemui/plugins/omni/AssistStateManager;->getActivityInfo(Landroid/content/ComponentName;)Landroid/content/pm/ActivityInfo;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    const/4 p1, 0x1

    .line 6
    if-eqz p0, :cond_1

    .line 7
    .line 8
    iget p0, p0, Landroid/content/pm/ActivityInfo;->resizeMode:I

    .line 9
    .line 10
    if-eqz p0, :cond_0

    .line 11
    .line 12
    goto :goto_0

    .line 13
    :cond_0
    const/4 p1, 0x0

    .line 14
    :cond_1
    :goto_0
    return p1
.end method

.method private synthetic lambda$closeGlobalSearchSession$1(Landroid/app/appsearch/GlobalSearchSession;)V
    .locals 3

    .line 1
    const-string v0, "AssistStateManager"

    .line 2
    .line 3
    :try_start_0
    const-string v1, "com.google.android.googlequicksearchbox"

    .line 4
    .line 5
    iget-object p0, p0, Lcom/android/systemui/plugins/omni/AssistStateManager;->mObserverCallback:Landroid/app/appsearch/observer/ObserverCallback;

    .line 6
    .line 7
    invoke-virtual {p1, v1, p0}, Landroid/app/appsearch/GlobalSearchSession;->unregisterObserverCallback(Ljava/lang/String;Landroid/app/appsearch/observer/ObserverCallback;)V
    :try_end_0
    .catch Landroid/app/appsearch/exceptions/AppSearchException; {:try_start_0 .. :try_end_0} :catch_0

    .line 8
    .line 9
    .line 10
    goto :goto_0

    .line 11
    :catch_0
    move-exception p0

    .line 12
    new-instance v1, Ljava/lang/StringBuilder;

    .line 13
    .line 14
    const-string v2, "close AppSearchException = "

    .line 15
    .line 16
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 17
    .line 18
    .line 19
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 20
    .line 21
    .line 22
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 23
    .line 24
    .line 25
    move-result-object p0

    .line 26
    invoke-static {v0, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 27
    .line 28
    .line 29
    :goto_0
    const-string p0, "close searchSession.close"

    .line 30
    .line 31
    invoke-static {v0, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 32
    .line 33
    .line 34
    invoke-virtual {p1}, Landroid/app/appsearch/GlobalSearchSession;->close()V

    .line 35
    .line 36
    .line 37
    return-void
.end method

.method private synthetic lambda$initGlobalSearchSession$2(Ljava/util/function/Consumer;Landroid/app/appsearch/AppSearchResult;)V
    .locals 4

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    const-string v1, "initGlobalSearchSession result = "

    .line 4
    .line 5
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 9
    .line 10
    .line 11
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    const-string v1, "AssistStateManager"

    .line 16
    .line 17
    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 18
    .line 19
    .line 20
    invoke-virtual {p2}, Landroid/app/appsearch/AppSearchResult;->isSuccess()Z

    .line 21
    .line 22
    .line 23
    move-result v0

    .line 24
    iput-boolean v0, p0, Lcom/android/systemui/plugins/omni/AssistStateManager;->mIsInitSession:Z

    .line 25
    .line 26
    if-eqz v0, :cond_0

    .line 27
    .line 28
    const-string v0, "initGlobalSearchSession success"

    .line 29
    .line 30
    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 31
    .line 32
    .line 33
    invoke-virtual {p2}, Landroid/app/appsearch/AppSearchResult;->getResultValue()Ljava/lang/Object;

    .line 34
    .line 35
    .line 36
    move-result-object p2

    .line 37
    check-cast p2, Landroid/app/appsearch/GlobalSearchSession;

    .line 38
    .line 39
    invoke-direct {p0, p2}, Lcom/android/systemui/plugins/omni/AssistStateManager;->registerSearchSessionObserver(Landroid/app/appsearch/GlobalSearchSession;)V

    .line 40
    .line 41
    .line 42
    iget-object v0, p0, Lcom/android/systemui/plugins/omni/AssistStateManager;->mGlobalSearchSessionFuture:Ljava/util/concurrent/CompletableFuture;

    .line 43
    .line 44
    invoke-virtual {v0, p2}, Ljava/util/concurrent/CompletableFuture;->complete(Ljava/lang/Object;)Z

    .line 45
    .line 46
    .line 47
    goto :goto_0

    .line 48
    :cond_0
    const-string v0, "initGlobalSearchSession failed"

    .line 49
    .line 50
    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 51
    .line 52
    .line 53
    iget-object v0, p0, Lcom/android/systemui/plugins/omni/AssistStateManager;->mGlobalSearchSessionFuture:Ljava/util/concurrent/CompletableFuture;

    .line 54
    .line 55
    new-instance v2, Landroid/app/appsearch/exceptions/AppSearchException;

    .line 56
    .line 57
    invoke-virtual {p2}, Landroid/app/appsearch/AppSearchResult;->getResultCode()I

    .line 58
    .line 59
    .line 60
    move-result v3

    .line 61
    invoke-virtual {p2}, Landroid/app/appsearch/AppSearchResult;->getErrorMessage()Ljava/lang/String;

    .line 62
    .line 63
    .line 64
    move-result-object p2

    .line 65
    invoke-direct {v2, v3, p2}, Landroid/app/appsearch/exceptions/AppSearchException;-><init>(ILjava/lang/String;)V

    .line 66
    .line 67
    .line 68
    invoke-virtual {v0, v2}, Ljava/util/concurrent/CompletableFuture;->completeExceptionally(Ljava/lang/Throwable;)Z

    .line 69
    .line 70
    .line 71
    :goto_0
    if-eqz p1, :cond_1

    .line 72
    .line 73
    new-instance p2, Ljava/lang/StringBuilder;

    .line 74
    .line 75
    const-string v0, "initGlobalSearchSession callback is not null : mIsInitSeesion = "

    .line 76
    .line 77
    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 78
    .line 79
    .line 80
    iget-boolean v0, p0, Lcom/android/systemui/plugins/omni/AssistStateManager;->mIsInitSession:Z

    .line 81
    .line 82
    invoke-static {p2, v0, v1}, Lcom/android/systemui/coverlauncher/utils/badge/NotificationListener$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ZLjava/lang/String;)V

    .line 83
    .line 84
    .line 85
    iget-boolean p0, p0, Lcom/android/systemui/plugins/omni/AssistStateManager;->mIsInitSession:Z

    .line 86
    .line 87
    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 88
    .line 89
    .line 90
    move-result-object p0

    .line 91
    invoke-interface {p1, p0}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    .line 92
    .line 93
    .line 94
    :cond_1
    return-void
.end method

.method private synthetic lambda$new$0(Landroid/content/Intent;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/android/systemui/plugins/omni/AssistStateManager;->requestUpdateOmniPackageInfo()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method private synthetic lambda$requestUpdateOmniPackageInfo$3()V
    .locals 6

    .line 1
    const-string v0, "com.google.android.googlequicksearchbox"

    .line 2
    .line 3
    const-string v1, "AssistStateManager"

    .line 4
    .line 5
    const-string/jumbo v2, "requestUpdateOmniPackageInfo mIsOmniAware = "

    .line 6
    .line 7
    .line 8
    sget-object v3, Lcom/android/systemui/plugins/omni/AssistStateManager;->COMPONENT_NAME_GOOGLE_SEARCH:Landroid/content/ComponentName;

    .line 9
    .line 10
    invoke-direct {p0, v3}, Lcom/android/systemui/plugins/omni/AssistStateManager;->isInMultiWindowMode(Landroid/content/ComponentName;)Z

    .line 11
    .line 12
    .line 13
    move-result v3

    .line 14
    const/4 v4, 0x1

    .line 15
    const/4 v5, 0x0

    .line 16
    if-nez v3, :cond_1

    .line 17
    .line 18
    sget-object v3, Lcom/android/systemui/plugins/omni/AssistStateManager;->COMPONENT_NAME_GOOGLE_SEARCH_INTRO:Landroid/content/ComponentName;

    .line 19
    .line 20
    invoke-direct {p0, v3}, Lcom/android/systemui/plugins/omni/AssistStateManager;->isInMultiWindowMode(Landroid/content/ComponentName;)Z

    .line 21
    .line 22
    .line 23
    move-result v3

    .line 24
    if-eqz v3, :cond_0

    .line 25
    .line 26
    goto :goto_0

    .line 27
    :cond_0
    move v3, v5

    .line 28
    goto :goto_1

    .line 29
    :cond_1
    :goto_0
    move v3, v4

    .line 30
    :goto_1
    iput-boolean v3, p0, Lcom/android/systemui/plugins/omni/AssistStateManager;->mIsInMultiWindow:Z

    .line 31
    .line 32
    :try_start_0
    iget-object v3, p0, Lcom/android/systemui/plugins/omni/AssistStateManager;->mContext:Landroid/content/Context;

    .line 33
    .line 34
    invoke-virtual {v3}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    .line 35
    .line 36
    .line 37
    move-result-object v3

    .line 38
    invoke-virtual {v3, v0}, Landroid/content/pm/PackageManager;->getApplicationEnabledSetting(Ljava/lang/String;)I

    .line 39
    .line 40
    .line 41
    move-result v3

    .line 42
    if-gt v3, v4, :cond_2

    .line 43
    .line 44
    goto :goto_2

    .line 45
    :cond_2
    move v4, v5

    .line 46
    :goto_2
    iput-boolean v4, p0, Lcom/android/systemui/plugins/omni/AssistStateManager;->mIsOmniPackageEnabled:Z
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 47
    .line 48
    goto :goto_3

    .line 49
    :catch_0
    iput-boolean v5, p0, Lcom/android/systemui/plugins/omni/AssistStateManager;->mIsOmniPackageEnabled:Z

    .line 50
    .line 51
    const-string/jumbo v3, "requestUpdateOmniPackageInfo getApplicationEnabledSetting IllegalArgumentException"

    .line 52
    .line 53
    .line 54
    invoke-static {v1, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 55
    .line 56
    .line 57
    :goto_3
    new-instance v3, Ljava/lang/StringBuilder;

    .line 58
    .line 59
    const-string/jumbo v4, "requestUpdateOmniPackageInfo mIsOmniPackageEnabled = "

    .line 60
    .line 61
    .line 62
    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 63
    .line 64
    .line 65
    iget-boolean v4, p0, Lcom/android/systemui/plugins/omni/AssistStateManager;->mIsOmniPackageEnabled:Z

    .line 66
    .line 67
    invoke-static {v3, v4, v1}, Lcom/android/systemui/coverlauncher/utils/badge/NotificationListener$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ZLjava/lang/String;)V

    .line 68
    .line 69
    .line 70
    :try_start_1
    iget-object v3, p0, Lcom/android/systemui/plugins/omni/AssistStateManager;->mContext:Landroid/content/Context;

    .line 71
    .line 72
    invoke-virtual {v3}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    .line 73
    .line 74
    .line 75
    move-result-object v3

    .line 76
    const-string v4, "omni.AWARE"

    .line 77
    .line 78
    invoke-virtual {v3, v4, v0}, Landroid/content/pm/PackageManager;->getProperty(Ljava/lang/String;Ljava/lang/String;)Landroid/content/pm/PackageManager$Property;

    .line 79
    .line 80
    .line 81
    move-result-object v0

    .line 82
    invoke-virtual {v0}, Landroid/content/pm/PackageManager$Property;->getBoolean()Z

    .line 83
    .line 84
    .line 85
    move-result v0

    .line 86
    iput-boolean v0, p0, Lcom/android/systemui/plugins/omni/AssistStateManager;->mIsOmniAware:Z

    .line 87
    .line 88
    new-instance v0, Ljava/lang/StringBuilder;

    .line 89
    .line 90
    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 91
    .line 92
    .line 93
    iget-boolean v2, p0, Lcom/android/systemui/plugins/omni/AssistStateManager;->mIsOmniAware:Z

    .line 94
    .line 95
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 96
    .line 97
    .line 98
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 99
    .line 100
    .line 101
    move-result-object v0

    .line 102
    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1 .. :try_end_1} :catch_1

    .line 103
    .line 104
    .line 105
    goto :goto_4

    .line 106
    :catch_1
    iput-boolean v5, p0, Lcom/android/systemui/plugins/omni/AssistStateManager;->mIsOmniAware:Z

    .line 107
    .line 108
    new-instance v0, Ljava/lang/StringBuilder;

    .line 109
    .line 110
    const-string/jumbo v2, "requestUpdateOmniPackageInfo mIsOmniAware failed = "

    .line 111
    .line 112
    .line 113
    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 114
    .line 115
    .line 116
    iget-boolean p0, p0, Lcom/android/systemui/plugins/omni/AssistStateManager;->mIsOmniAware:Z

    .line 117
    .line 118
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 119
    .line 120
    .line 121
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 122
    .line 123
    .line 124
    move-result-object p0

    .line 125
    invoke-static {v1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 126
    .line 127
    .line 128
    :goto_4
    return-void
.end method

.method private synthetic lambda$updateIsOmniAvailableFromAppSearch$4(Ljava/util/function/Consumer;Landroid/app/appsearch/GlobalSearchSession;)V
    .locals 6

    .line 1
    const-string v1, "com.google.android.googlequicksearchbox"

    .line 2
    .line 3
    const-string v2, "OmniEntryPoint"

    .line 4
    .line 5
    iget-object v3, p0, Lcom/android/systemui/plugins/omni/AssistStateManager;->mGetByDocumentIdRequest:Landroid/app/appsearch/GetByDocumentIdRequest;

    .line 6
    .line 7
    new-instance v4, Lcom/android/systemui/plugins/omni/AssistStateManager$$ExternalSyntheticLambda2;

    .line 8
    .line 9
    const/4 v0, 0x3

    .line 10
    invoke-direct {v4, v0}, Lcom/android/systemui/plugins/omni/AssistStateManager$$ExternalSyntheticLambda2;-><init>(I)V

    .line 11
    .line 12
    .line 13
    new-instance v5, Lcom/android/systemui/plugins/omni/AssistStateManager$2;

    .line 14
    .line 15
    invoke-direct {v5, p0, p1}, Lcom/android/systemui/plugins/omni/AssistStateManager$2;-><init>(Lcom/android/systemui/plugins/omni/AssistStateManager;Ljava/util/function/Consumer;)V

    .line 16
    .line 17
    .line 18
    move-object v0, p2

    .line 19
    invoke-virtual/range {v0 .. v5}, Landroid/app/appsearch/GlobalSearchSession;->getByDocumentId(Ljava/lang/String;Ljava/lang/String;Landroid/app/appsearch/GetByDocumentIdRequest;Ljava/util/concurrent/Executor;Landroid/app/appsearch/BatchResultCallback;)V

    .line 20
    .line 21
    .line 22
    return-void
.end method

.method private static synthetic lambda$updateIsOmniAvailableFromAppSearch$5(Ljava/lang/Throwable;)Ljava/lang/Void;
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    const-string/jumbo v1, "updateIsOmniAvailableFromAppSearch exception = "

    .line 4
    .line 5
    .line 6
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 7
    .line 8
    .line 9
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 10
    .line 11
    .line 12
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 13
    .line 14
    .line 15
    move-result-object p0

    .line 16
    const-string v0, "AssistStateManager"

    .line 17
    .line 18
    invoke-static {v0, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 19
    .line 20
    .line 21
    const/4 p0, 0x0

    .line 22
    return-object p0
.end method

.method private registerSearchSessionObserver(Landroid/app/appsearch/GlobalSearchSession;)V
    .locals 5

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    const-string/jumbo v1, "registerSearchSessionObserver searchSession = "

    .line 4
    .line 5
    .line 6
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 7
    .line 8
    .line 9
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 10
    .line 11
    .line 12
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 13
    .line 14
    .line 15
    move-result-object v0

    .line 16
    const-string v1, "AssistStateManager"

    .line 17
    .line 18
    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 19
    .line 20
    .line 21
    new-instance v0, Landroid/app/appsearch/observer/ObserverSpec$Builder;

    .line 22
    .line 23
    invoke-direct {v0}, Landroid/app/appsearch/observer/ObserverSpec$Builder;-><init>()V

    .line 24
    .line 25
    .line 26
    invoke-virtual {v0}, Landroid/app/appsearch/observer/ObserverSpec$Builder;->build()Landroid/app/appsearch/observer/ObserverSpec;

    .line 27
    .line 28
    .line 29
    move-result-object v0

    .line 30
    :try_start_0
    const-string v2, "com.google.android.googlequicksearchbox"

    .line 31
    .line 32
    new-instance v3, Lcom/android/systemui/plugins/omni/AssistStateManager$$ExternalSyntheticLambda2;

    .line 33
    .line 34
    const/4 v4, 0x1

    .line 35
    invoke-direct {v3, v4}, Lcom/android/systemui/plugins/omni/AssistStateManager$$ExternalSyntheticLambda2;-><init>(I)V

    .line 36
    .line 37
    .line 38
    iget-object p0, p0, Lcom/android/systemui/plugins/omni/AssistStateManager;->mObserverCallback:Landroid/app/appsearch/observer/ObserverCallback;

    .line 39
    .line 40
    invoke-virtual {p1, v2, v0, v3, p0}, Landroid/app/appsearch/GlobalSearchSession;->registerObserverCallback(Ljava/lang/String;Landroid/app/appsearch/observer/ObserverSpec;Ljava/util/concurrent/Executor;Landroid/app/appsearch/observer/ObserverCallback;)V
    :try_end_0
    .catch Landroid/app/appsearch/exceptions/AppSearchException; {:try_start_0 .. :try_end_0} :catch_0

    .line 41
    .line 42
    .line 43
    goto :goto_0

    .line 44
    :catch_0
    move-exception p0

    .line 45
    new-instance p1, Ljava/lang/StringBuilder;

    .line 46
    .line 47
    const-string/jumbo v0, "registerSearchSessionObserver AppSearchException = "

    .line 48
    .line 49
    .line 50
    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 51
    .line 52
    .line 53
    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 54
    .line 55
    .line 56
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 57
    .line 58
    .line 59
    move-result-object p0

    .line 60
    invoke-static {v1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 61
    .line 62
    .line 63
    :goto_0
    return-void
.end method

.method private requestUpdateOmniPackageInfo()V
    .locals 2

    .line 1
    const-string v0, "AssistStateManager"

    .line 2
    .line 3
    const-string/jumbo v1, "requestUpdateOmniPackageInfo"

    .line 4
    .line 5
    .line 6
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 7
    .line 8
    .line 9
    sget-object v0, Lcom/android/systemui/plugins/omni/AssistStateManager;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/ThreadPoolExecutor;

    .line 10
    .line 11
    new-instance v1, Lcom/android/systemui/plugins/omni/AssistStateManager$$ExternalSyntheticLambda5;

    .line 12
    .line 13
    invoke-direct {v1, p0}, Lcom/android/systemui/plugins/omni/AssistStateManager$$ExternalSyntheticLambda5;-><init>(Lcom/android/systemui/plugins/omni/AssistStateManager;)V

    .line 14
    .line 15
    .line 16
    invoke-virtual {v0, v1}, Ljava/util/concurrent/ThreadPoolExecutor;->execute(Ljava/lang/Runnable;)V

    .line 17
    .line 18
    .line 19
    return-void
.end method


# virtual methods
.method public close()V
    .locals 2

    .line 1
    const-string v0, "AssistStateManager"

    .line 2
    .line 3
    const-string v1, "close"

    .line 4
    .line 5
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 6
    .line 7
    .line 8
    invoke-virtual {p0}, Lcom/android/systemui/plugins/omni/AssistStateManager;->closeGlobalSearchSession()V

    .line 9
    .line 10
    .line 11
    iget-object v0, p0, Lcom/android/systemui/plugins/omni/AssistStateManager;->mOmniPackageReceiver:Lcom/android/systemui/plugins/omni/SimpleBroadcastReceiver;

    .line 12
    .line 13
    iget-object p0, p0, Lcom/android/systemui/plugins/omni/AssistStateManager;->mContext:Landroid/content/Context;

    .line 14
    .line 15
    invoke-virtual {v0, p0}, Lcom/android/systemui/plugins/omni/SimpleBroadcastReceiver;->unregisterReceiverSafely(Landroid/content/Context;)V

    .line 16
    .line 17
    .line 18
    return-void
.end method

.method public closeGlobalSearchSession()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/android/systemui/plugins/omni/AssistStateManager;->mGlobalSearchSessionFuture:Ljava/util/concurrent/CompletableFuture;

    .line 2
    .line 3
    new-instance v1, Lcom/android/systemui/plugins/omni/AssistStateManager$$ExternalSyntheticLambda0;

    .line 4
    .line 5
    const/4 v2, 0x1

    .line 6
    invoke-direct {v1, p0, v2}, Lcom/android/systemui/plugins/omni/AssistStateManager$$ExternalSyntheticLambda0;-><init>(Lcom/android/systemui/plugins/omni/AssistStateManager;I)V

    .line 7
    .line 8
    .line 9
    invoke-virtual {v0, v1}, Ljava/util/concurrent/CompletableFuture;->thenAcceptAsync(Ljava/util/function/Consumer;)Ljava/util/concurrent/CompletableFuture;

    .line 10
    .line 11
    .line 12
    return-void
.end method

.method public initSearchSession(Landroid/content/Context;Ljava/util/function/Consumer;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/function/Consumer<",
            "Ljava/lang/Boolean;",
            ">;)V"
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Lcom/android/systemui/plugins/omni/AssistStateManager;->closeGlobalSearchSession()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Ljava/util/concurrent/CompletableFuture;

    .line 5
    .line 6
    invoke-direct {v0}, Ljava/util/concurrent/CompletableFuture;-><init>()V

    .line 7
    .line 8
    .line 9
    iput-object v0, p0, Lcom/android/systemui/plugins/omni/AssistStateManager;->mGlobalSearchSessionFuture:Ljava/util/concurrent/CompletableFuture;

    .line 10
    .line 11
    invoke-direct {p0, p1, p2}, Lcom/android/systemui/plugins/omni/AssistStateManager;->initGlobalSearchSession(Landroid/content/Context;Ljava/util/function/Consumer;)V

    .line 12
    .line 13
    .line 14
    return-void
.end method

.method public isCsHelperAvailable()Ljava/util/Optional;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Optional<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    const-string v1, "isCsHelperAvailable mIsOmniAware = "

    .line 4
    .line 5
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    iget-boolean v1, p0, Lcom/android/systemui/plugins/omni/AssistStateManager;->mIsOmniAware:Z

    .line 9
    .line 10
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 11
    .line 12
    .line 13
    const-string v1, ", mIsCsHelperAvailable = "

    .line 14
    .line 15
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 16
    .line 17
    .line 18
    iget-object v1, p0, Lcom/android/systemui/plugins/omni/AssistStateManager;->mIsCsHelperAvailable:Ljava/util/Optional;

    .line 19
    .line 20
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 21
    .line 22
    .line 23
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 24
    .line 25
    .line 26
    move-result-object v0

    .line 27
    const-string v1, "AssistStateManager"

    .line 28
    .line 29
    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 30
    .line 31
    .line 32
    iget-boolean v0, p0, Lcom/android/systemui/plugins/omni/AssistStateManager;->mIsOmniAware:Z

    .line 33
    .line 34
    if-nez v0, :cond_0

    .line 35
    .line 36
    sget-object p0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 37
    .line 38
    invoke-static {p0}, Ljava/util/Optional;->of(Ljava/lang/Object;)Ljava/util/Optional;

    .line 39
    .line 40
    .line 41
    move-result-object p0

    .line 42
    return-object p0

    .line 43
    :cond_0
    iget-object p0, p0, Lcom/android/systemui/plugins/omni/AssistStateManager;->mIsCsHelperAvailable:Ljava/util/Optional;

    .line 44
    .line 45
    return-object p0
.end method

.method public isInMultiWindow()Z
    .locals 3

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    const-string v1, "isInMultiWindow mIsInMultiWindow = "

    .line 4
    .line 5
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    iget-boolean v1, p0, Lcom/android/systemui/plugins/omni/AssistStateManager;->mIsInMultiWindow:Z

    .line 9
    .line 10
    const-string v2, "AssistStateManager"

    .line 11
    .line 12
    invoke-static {v0, v1, v2}, Lcom/android/systemui/coverlauncher/utils/badge/NotificationListener$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ZLjava/lang/String;)V

    .line 13
    .line 14
    .line 15
    iget-boolean p0, p0, Lcom/android/systemui/plugins/omni/AssistStateManager;->mIsInMultiWindow:Z

    .line 16
    .line 17
    return p0
.end method

.method public isInitSession()Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lcom/android/systemui/plugins/omni/AssistStateManager;->mIsInitSession:Z

    .line 2
    .line 3
    return p0
.end method

.method public isOmniAvailable()Z
    .locals 3

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    const-string v1, "isOmniAvailable mIsOmniAware = "

    .line 4
    .line 5
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    iget-boolean v1, p0, Lcom/android/systemui/plugins/omni/AssistStateManager;->mIsOmniAware:Z

    .line 9
    .line 10
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 11
    .line 12
    .line 13
    const-string v1, ", mIsOmniAvailable = "

    .line 14
    .line 15
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 16
    .line 17
    .line 18
    iget-boolean v1, p0, Lcom/android/systemui/plugins/omni/AssistStateManager;->mIsOmniAvailable:Z

    .line 19
    .line 20
    const-string v2, "AssistStateManager"

    .line 21
    .line 22
    invoke-static {v0, v1, v2}, Landroidx/appcompat/widget/ActionBarContextView$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ZLjava/lang/String;)V

    .line 23
    .line 24
    .line 25
    iget-boolean v0, p0, Lcom/android/systemui/plugins/omni/AssistStateManager;->mIsOmniAware:Z

    .line 26
    .line 27
    if-nez v0, :cond_0

    .line 28
    .line 29
    const/4 p0, 0x0

    .line 30
    return p0

    .line 31
    :cond_0
    iget-boolean p0, p0, Lcom/android/systemui/plugins/omni/AssistStateManager;->mIsOmniAvailable:Z

    .line 32
    .line 33
    return p0
.end method

.method public isOmniPackageEnabled()Z
    .locals 3

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    const-string v1, "isOmniPackageEnabled mIsOmniPackageEnabled = "

    .line 4
    .line 5
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    iget-boolean v1, p0, Lcom/android/systemui/plugins/omni/AssistStateManager;->mIsOmniPackageEnabled:Z

    .line 9
    .line 10
    const-string v2, "AssistStateManager"

    .line 11
    .line 12
    invoke-static {v0, v1, v2}, Lcom/android/systemui/coverlauncher/utils/badge/NotificationListener$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ZLjava/lang/String;)V

    .line 13
    .line 14
    .line 15
    iget-boolean p0, p0, Lcom/android/systemui/plugins/omni/AssistStateManager;->mIsOmniPackageEnabled:Z

    .line 16
    .line 17
    return p0
.end method

.method public isVisAvailable()Ljava/util/Optional;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Optional<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    const-string v1, "isVisAvailable mIsOmniAware = "

    .line 4
    .line 5
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    iget-boolean v1, p0, Lcom/android/systemui/plugins/omni/AssistStateManager;->mIsOmniAware:Z

    .line 9
    .line 10
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 11
    .line 12
    .line 13
    const-string v1, ", mIsVisAvailable = "

    .line 14
    .line 15
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 16
    .line 17
    .line 18
    iget-object v1, p0, Lcom/android/systemui/plugins/omni/AssistStateManager;->mIsVisAvailable:Ljava/util/Optional;

    .line 19
    .line 20
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 21
    .line 22
    .line 23
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 24
    .line 25
    .line 26
    move-result-object v0

    .line 27
    const-string v1, "AssistStateManager"

    .line 28
    .line 29
    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 30
    .line 31
    .line 32
    iget-boolean v0, p0, Lcom/android/systemui/plugins/omni/AssistStateManager;->mIsOmniAware:Z

    .line 33
    .line 34
    if-nez v0, :cond_0

    .line 35
    .line 36
    sget-object p0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 37
    .line 38
    invoke-static {p0}, Ljava/util/Optional;->of(Ljava/lang/Object;)Ljava/util/Optional;

    .line 39
    .line 40
    .line 41
    move-result-object p0

    .line 42
    return-object p0

    .line 43
    :cond_0
    iget-object p0, p0, Lcom/android/systemui/plugins/omni/AssistStateManager;->mIsVisAvailable:Ljava/util/Optional;

    .line 44
    .line 45
    return-object p0
.end method

.method public updateIsOmniAvailableFromAppSearch(Ljava/util/function/Consumer;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/Consumer<",
            "Ljava/lang/Boolean;",
            ">;)V"
        }
    .end annotation

    .line 1
    const-string v0, "AssistStateManager"

    .line 2
    .line 3
    const-string/jumbo v1, "updateIsOmniAvailableFromAppSearch"

    .line 4
    .line 5
    .line 6
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 7
    .line 8
    .line 9
    iget-object v0, p0, Lcom/android/systemui/plugins/omni/AssistStateManager;->mGlobalSearchSessionFuture:Ljava/util/concurrent/CompletableFuture;

    .line 10
    .line 11
    new-instance v1, Lcom/android/systemui/plugins/omni/AssistStateManager$$ExternalSyntheticLambda1;

    .line 12
    .line 13
    const/4 v2, 0x0

    .line 14
    invoke-direct {v1, p0, p1, v2}, Lcom/android/systemui/plugins/omni/AssistStateManager$$ExternalSyntheticLambda1;-><init>(Lcom/android/systemui/plugins/omni/AssistStateManager;Ljava/util/function/Consumer;I)V

    .line 15
    .line 16
    .line 17
    new-instance p0, Lcom/android/systemui/plugins/omni/AssistStateManager$$ExternalSyntheticLambda2;

    .line 18
    .line 19
    invoke-direct {p0, v2}, Lcom/android/systemui/plugins/omni/AssistStateManager$$ExternalSyntheticLambda2;-><init>(I)V

    .line 20
    .line 21
    .line 22
    invoke-virtual {v0, v1, p0}, Ljava/util/concurrent/CompletableFuture;->thenAcceptAsync(Ljava/util/function/Consumer;Ljava/util/concurrent/Executor;)Ljava/util/concurrent/CompletableFuture;

    .line 23
    .line 24
    .line 25
    move-result-object p0

    .line 26
    new-instance p1, Lcom/android/systemui/plugins/omni/AssistStateManager$$ExternalSyntheticLambda3;

    .line 27
    .line 28
    invoke-direct {p1}, Lcom/android/systemui/plugins/omni/AssistStateManager$$ExternalSyntheticLambda3;-><init>()V

    .line 29
    .line 30
    .line 31
    invoke-virtual {p0, p1}, Ljava/util/concurrent/CompletableFuture;->exceptionally(Ljava/util/function/Function;)Ljava/util/concurrent/CompletableFuture;

    .line 32
    .line 33
    .line 34
    return-void
.end method
