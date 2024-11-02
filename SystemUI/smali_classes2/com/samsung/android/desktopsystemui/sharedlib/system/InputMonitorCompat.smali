.class public Lcom/samsung/android/desktopsystemui/sharedlib/system/InputMonitorCompat;
.super Ljava/lang/Object;
.source "qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/samsung/android/desktopsystemui/sharedlib/system/InputMonitorCompat;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private mForReturn:Z

.field private final mInputMonitor:Landroid/view/InputMonitor;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lcom/samsung/android/desktopsystemui/sharedlib/system/InputMonitorCompat$1;

    .line 2
    .line 3
    invoke-direct {v0}, Lcom/samsung/android/desktopsystemui/sharedlib/system/InputMonitorCompat$1;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Lcom/samsung/android/desktopsystemui/sharedlib/system/InputMonitorCompat;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 7
    .line 8
    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .locals 1

    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 9
    iput-boolean v0, p0, Lcom/samsung/android/desktopsystemui/sharedlib/system/InputMonitorCompat;->mForReturn:Z

    .line 10
    sget-object v0, Landroid/view/InputMonitor;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/view/InputMonitor;

    iput-object p1, p0, Lcom/samsung/android/desktopsystemui/sharedlib/system/InputMonitorCompat;->mInputMonitor:Landroid/view/InputMonitor;

    return-void
.end method

.method public synthetic constructor <init>(Landroid/os/Parcel;Lcom/samsung/android/desktopsystemui/sharedlib/system/InputMonitorCompat$1;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/samsung/android/desktopsystemui/sharedlib/system/InputMonitorCompat;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method private constructor <init>(Landroid/view/InputMonitor;)V
    .locals 1

    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 6
    iput-boolean v0, p0, Lcom/samsung/android/desktopsystemui/sharedlib/system/InputMonitorCompat;->mForReturn:Z

    .line 7
    iput-object p1, p0, Lcom/samsung/android/desktopsystemui/sharedlib/system/InputMonitorCompat;->mInputMonitor:Landroid/view/InputMonitor;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;I)V
    .locals 1

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 3
    iput-boolean v0, p0, Lcom/samsung/android/desktopsystemui/sharedlib/system/InputMonitorCompat;->mForReturn:Z

    .line 4
    invoke-static {}, Landroid/hardware/input/InputManager;->getInstance()Landroid/hardware/input/InputManager;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Landroid/hardware/input/InputManager;->monitorGestureInput(Ljava/lang/String;I)Landroid/view/InputMonitor;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/desktopsystemui/sharedlib/system/InputMonitorCompat;->mInputMonitor:Landroid/view/InputMonitor;

    return-void
.end method

.method public static fromBundle(Landroid/os/Bundle;Ljava/lang/String;)Lcom/samsung/android/desktopsystemui/sharedlib/system/InputMonitorCompat;
    .locals 1

    .line 1
    const-class v0, Lcom/samsung/android/desktopsystemui/sharedlib/system/InputMonitorCompat;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    invoke-virtual {p0, v0}, Landroid/os/Bundle;->setClassLoader(Ljava/lang/ClassLoader;)V

    .line 8
    .line 9
    .line 10
    invoke-virtual {p0, p1}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    .line 11
    .line 12
    .line 13
    move-result-object p0

    .line 14
    check-cast p0, Lcom/samsung/android/desktopsystemui/sharedlib/system/InputMonitorCompat;

    .line 15
    .line 16
    return-object p0
.end method

.method public static obtainReturnValue(Landroid/view/InputMonitor;)Lcom/samsung/android/desktopsystemui/sharedlib/system/InputMonitorCompat;
    .locals 1

    .line 1
    new-instance v0, Lcom/samsung/android/desktopsystemui/sharedlib/system/InputMonitorCompat;

    .line 2
    .line 3
    invoke-direct {v0, p0}, Lcom/samsung/android/desktopsystemui/sharedlib/system/InputMonitorCompat;-><init>(Landroid/view/InputMonitor;)V

    .line 4
    .line 5
    .line 6
    const/4 p0, 0x1

    .line 7
    iput-boolean p0, v0, Lcom/samsung/android/desktopsystemui/sharedlib/system/InputMonitorCompat;->mForReturn:Z

    .line 8
    .line 9
    return-object v0
.end method


# virtual methods
.method public describeContents()I
    .locals 0

    .line 1
    const/4 p0, 0x0

    .line 2
    return p0
.end method

.method public dispose()V
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/samsung/android/desktopsystemui/sharedlib/system/InputMonitorCompat;->mInputMonitor:Landroid/view/InputMonitor;

    .line 2
    .line 3
    invoke-virtual {p0}, Landroid/view/InputMonitor;->dispose()V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public getInputReceiver(Landroid/os/Looper;Landroid/view/Choreographer;Lcom/samsung/android/desktopsystemui/sharedlib/system/InputChannelCompat$InputEventListener;)Lcom/samsung/android/desktopsystemui/sharedlib/system/InputChannelCompat$InputEventReceiver;
    .locals 1

    .line 1
    new-instance v0, Lcom/samsung/android/desktopsystemui/sharedlib/system/InputChannelCompat$InputEventReceiver;

    .line 2
    .line 3
    iget-object p0, p0, Lcom/samsung/android/desktopsystemui/sharedlib/system/InputMonitorCompat;->mInputMonitor:Landroid/view/InputMonitor;

    .line 4
    .line 5
    invoke-virtual {p0}, Landroid/view/InputMonitor;->getInputChannel()Landroid/view/InputChannel;

    .line 6
    .line 7
    .line 8
    move-result-object p0

    .line 9
    invoke-direct {v0, p0, p1, p2, p3}, Lcom/samsung/android/desktopsystemui/sharedlib/system/InputChannelCompat$InputEventReceiver;-><init>(Landroid/view/InputChannel;Landroid/os/Looper;Landroid/view/Choreographer;Lcom/samsung/android/desktopsystemui/sharedlib/system/InputChannelCompat$InputEventListener;)V

    .line 10
    .line 11
    .line 12
    return-object v0
.end method

.method public pilferPointers()V
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/samsung/android/desktopsystemui/sharedlib/system/InputMonitorCompat;->mInputMonitor:Landroid/view/InputMonitor;

    .line 2
    .line 3
    invoke-virtual {p0}, Landroid/view/InputMonitor;->pilferPointers()V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/samsung/android/desktopsystemui/sharedlib/system/InputMonitorCompat;->mInputMonitor:Landroid/view/InputMonitor;

    .line 2
    .line 3
    iget-boolean p0, p0, Lcom/samsung/android/desktopsystemui/sharedlib/system/InputMonitorCompat;->mForReturn:Z

    .line 4
    .line 5
    if-eqz p0, :cond_0

    .line 6
    .line 7
    const/4 p2, 0x1

    .line 8
    :cond_0
    invoke-virtual {v0, p1, p2}, Landroid/view/InputMonitor;->writeToParcel(Landroid/os/Parcel;I)V

    .line 9
    .line 10
    .line 11
    return-void
.end method
