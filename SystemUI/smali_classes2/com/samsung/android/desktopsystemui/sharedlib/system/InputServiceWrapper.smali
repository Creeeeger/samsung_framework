.class public Lcom/samsung/android/desktopsystemui/sharedlib/system/InputServiceWrapper;
.super Ljava/lang/Object;
.source "qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/desktopsystemui/sharedlib/system/InputServiceWrapper$H;,
        Lcom/samsung/android/desktopsystemui/sharedlib/system/InputServiceWrapper$DeXMultiFingerGesture;
    }
.end annotation


# static fields
.field private static final MSG_MULTIFINGERGESTURE:I = 0x1

.field private static final TAG:Ljava/lang/String; = "[DS]InputServiceWrapper"

.field private static final sInstance:Lcom/samsung/android/desktopsystemui/sharedlib/system/InputServiceWrapper;


# instance fields
.field private mCallbacks:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/samsung/android/desktopsystemui/sharedlib/system/InputServiceWrapper$DeXMultiFingerGesture;",
            ">;"
        }
    .end annotation
.end field

.field private mHandler:Landroid/os/Handler;

.field private final mInputManager:Landroid/hardware/input/InputManager;

.field private final mLock:Ljava/lang/Object;

.field private final mMultiFingerGestureListener:Landroid/hardware/input/InputManager$SemOnMultiFingerGestureListener;


# direct methods
.method public static synthetic $r8$lambda$5fHIvAK3Wm_OjbwG6PMBO61o_UU(Lcom/samsung/android/desktopsystemui/sharedlib/system/InputServiceWrapper;II)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/samsung/android/desktopsystemui/sharedlib/system/InputServiceWrapper;->lambda$new$0(II)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lcom/samsung/android/desktopsystemui/sharedlib/system/InputServiceWrapper;

    .line 2
    .line 3
    invoke-direct {v0}, Lcom/samsung/android/desktopsystemui/sharedlib/system/InputServiceWrapper;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Lcom/samsung/android/desktopsystemui/sharedlib/system/InputServiceWrapper;->sInstance:Lcom/samsung/android/desktopsystemui/sharedlib/system/InputServiceWrapper;

    .line 7
    .line 8
    return-void
.end method

.method private constructor <init>()V
    .locals 3

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Ljava/lang/Object;

    .line 5
    .line 6
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 7
    .line 8
    .line 9
    iput-object v0, p0, Lcom/samsung/android/desktopsystemui/sharedlib/system/InputServiceWrapper;->mLock:Ljava/lang/Object;

    .line 10
    .line 11
    new-instance v0, Ljava/util/ArrayList;

    .line 12
    .line 13
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 14
    .line 15
    .line 16
    iput-object v0, p0, Lcom/samsung/android/desktopsystemui/sharedlib/system/InputServiceWrapper;->mCallbacks:Ljava/util/ArrayList;

    .line 17
    .line 18
    new-instance v0, Lcom/samsung/android/desktopsystemui/sharedlib/system/InputServiceWrapper$H;

    .line 19
    .line 20
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    .line 21
    .line 22
    .line 23
    move-result-object v1

    .line 24
    const/4 v2, 0x0

    .line 25
    invoke-direct {v0, p0, v1, v2}, Lcom/samsung/android/desktopsystemui/sharedlib/system/InputServiceWrapper$H;-><init>(Lcom/samsung/android/desktopsystemui/sharedlib/system/InputServiceWrapper;Landroid/os/Looper;Lcom/samsung/android/desktopsystemui/sharedlib/system/InputServiceWrapper$1;)V

    .line 26
    .line 27
    .line 28
    iput-object v0, p0, Lcom/samsung/android/desktopsystemui/sharedlib/system/InputServiceWrapper;->mHandler:Landroid/os/Handler;

    .line 29
    .line 30
    new-instance v0, Lcom/samsung/android/desktopsystemui/sharedlib/system/InputServiceWrapper$$ExternalSyntheticLambda0;

    .line 31
    .line 32
    invoke-direct {v0, p0}, Lcom/samsung/android/desktopsystemui/sharedlib/system/InputServiceWrapper$$ExternalSyntheticLambda0;-><init>(Lcom/samsung/android/desktopsystemui/sharedlib/system/InputServiceWrapper;)V

    .line 33
    .line 34
    .line 35
    iput-object v0, p0, Lcom/samsung/android/desktopsystemui/sharedlib/system/InputServiceWrapper;->mMultiFingerGestureListener:Landroid/hardware/input/InputManager$SemOnMultiFingerGestureListener;

    .line 36
    .line 37
    invoke-static {}, Landroid/app/AppGlobals;->getInitialApplication()Landroid/app/Application;

    .line 38
    .line 39
    .line 40
    move-result-object v0

    .line 41
    const-string v1, "input"

    .line 42
    .line 43
    invoke-virtual {v0, v1}, Landroid/app/Application;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 44
    .line 45
    .line 46
    move-result-object v0

    .line 47
    check-cast v0, Landroid/hardware/input/InputManager;

    .line 48
    .line 49
    iput-object v0, p0, Lcom/samsung/android/desktopsystemui/sharedlib/system/InputServiceWrapper;->mInputManager:Landroid/hardware/input/InputManager;

    .line 50
    .line 51
    return-void
.end method

.method public static synthetic access$100(Lcom/samsung/android/desktopsystemui/sharedlib/system/InputServiceWrapper;)Ljava/util/ArrayList;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/samsung/android/desktopsystemui/sharedlib/system/InputServiceWrapper;->mCallbacks:Ljava/util/ArrayList;

    .line 2
    .line 3
    return-object p0
.end method

.method private addRegisterMultiFingerGestureCallback()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/samsung/android/desktopsystemui/sharedlib/system/InputServiceWrapper;->mInputManager:Landroid/hardware/input/InputManager;

    .line 2
    .line 3
    iget-object v1, p0, Lcom/samsung/android/desktopsystemui/sharedlib/system/InputServiceWrapper;->mMultiFingerGestureListener:Landroid/hardware/input/InputManager$SemOnMultiFingerGestureListener;

    .line 4
    .line 5
    iget-object p0, p0, Lcom/samsung/android/desktopsystemui/sharedlib/system/InputServiceWrapper;->mHandler:Landroid/os/Handler;

    .line 6
    .line 7
    invoke-virtual {v0, v1, p0}, Landroid/hardware/input/InputManager;->semRegisterOnMultiFingerGestureListener(Landroid/hardware/input/InputManager$SemOnMultiFingerGestureListener;Landroid/os/Handler;)V

    .line 8
    .line 9
    .line 10
    return-void
.end method

.method public static getInstance()Lcom/samsung/android/desktopsystemui/sharedlib/system/InputServiceWrapper;
    .locals 1

    .line 1
    sget-object v0, Lcom/samsung/android/desktopsystemui/sharedlib/system/InputServiceWrapper;->sInstance:Lcom/samsung/android/desktopsystemui/sharedlib/system/InputServiceWrapper;

    .line 2
    .line 3
    return-object v0
.end method

.method private synthetic lambda$new$0(II)V
    .locals 3

    .line 1
    const-string v0, "[DS]InputServiceWrapper"

    .line 2
    .line 3
    const-string v1, "onMultiFingerGesture , behavior = "

    .line 4
    .line 5
    const-string v2, ", reserved = "

    .line 6
    .line 7
    invoke-static {v1, p1, v2, p2, v0}, Landroidx/appcompat/widget/SuggestionsAdapter$$ExternalSyntheticOutline0;->m(Ljava/lang/String;ILjava/lang/String;ILjava/lang/String;)V

    .line 8
    .line 9
    .line 10
    iget-object v0, p0, Lcom/samsung/android/desktopsystemui/sharedlib/system/InputServiceWrapper;->mLock:Ljava/lang/Object;

    .line 11
    .line 12
    monitor-enter v0

    .line 13
    :try_start_0
    iget-object v1, p0, Lcom/samsung/android/desktopsystemui/sharedlib/system/InputServiceWrapper;->mHandler:Landroid/os/Handler;

    .line 14
    .line 15
    const/4 v2, 0x1

    .line 16
    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeMessages(I)V

    .line 17
    .line 18
    .line 19
    iget-object p0, p0, Lcom/samsung/android/desktopsystemui/sharedlib/system/InputServiceWrapper;->mHandler:Landroid/os/Handler;

    .line 20
    .line 21
    const/4 v1, 0x0

    .line 22
    invoke-virtual {p0, v2, p1, p2, v1}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    .line 23
    .line 24
    .line 25
    move-result-object p0

    .line 26
    invoke-virtual {p0}, Landroid/os/Message;->sendToTarget()V

    .line 27
    .line 28
    .line 29
    monitor-exit v0

    .line 30
    return-void

    .line 31
    :catchall_0
    move-exception p0

    .line 32
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 33
    throw p0
.end method

.method private removeUnregisterMultiFingerGestureCallback()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/samsung/android/desktopsystemui/sharedlib/system/InputServiceWrapper;->mInputManager:Landroid/hardware/input/InputManager;

    .line 2
    .line 3
    iget-object p0, p0, Lcom/samsung/android/desktopsystemui/sharedlib/system/InputServiceWrapper;->mMultiFingerGestureListener:Landroid/hardware/input/InputManager$SemOnMultiFingerGestureListener;

    .line 4
    .line 5
    invoke-virtual {v0, p0}, Landroid/hardware/input/InputManager;->semUnregisterOnMultiFingerGestureListener(Landroid/hardware/input/InputManager$SemOnMultiFingerGestureListener;)V

    .line 6
    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public addCallback(Lcom/samsung/android/desktopsystemui/sharedlib/system/InputServiceWrapper$DeXMultiFingerGesture;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/samsung/android/desktopsystemui/sharedlib/system/InputServiceWrapper;->mCallbacks:Ljava/util/ArrayList;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 4
    .line 5
    .line 6
    invoke-direct {p0}, Lcom/samsung/android/desktopsystemui/sharedlib/system/InputServiceWrapper;->addRegisterMultiFingerGestureCallback()V

    .line 7
    .line 8
    .line 9
    return-void
.end method

.method public clearCallback()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/samsung/android/desktopsystemui/sharedlib/system/InputServiceWrapper;->mCallbacks:Ljava/util/ArrayList;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 4
    .line 5
    .line 6
    invoke-direct {p0}, Lcom/samsung/android/desktopsystemui/sharedlib/system/InputServiceWrapper;->removeUnregisterMultiFingerGestureCallback()V

    .line 7
    .line 8
    .line 9
    return-void
.end method

.method public removeCallback(Lcom/samsung/android/desktopsystemui/sharedlib/system/InputServiceWrapper$DeXMultiFingerGesture;)V
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/samsung/android/desktopsystemui/sharedlib/system/InputServiceWrapper;->mCallbacks:Ljava/util/ArrayList;

    .line 2
    .line 3
    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 4
    .line 5
    .line 6
    return-void
.end method
