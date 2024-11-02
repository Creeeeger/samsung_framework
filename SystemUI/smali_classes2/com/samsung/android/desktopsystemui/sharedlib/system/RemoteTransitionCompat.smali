.class public Lcom/samsung/android/desktopsystemui/sharedlib/system/RemoteTransitionCompat;
.super Ljava/lang/Object;
.source "qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/desktopsystemui/sharedlib/system/RemoteTransitionCompat$Builder;,
        Lcom/samsung/android/desktopsystemui/sharedlib/system/RemoteTransitionCompat$RecentsControllerWrap;
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/samsung/android/desktopsystemui/sharedlib/system/RemoteTransitionCompat;",
            ">;"
        }
    .end annotation
.end field

.field private static final TAG:Ljava/lang/String; = "RemoteTransitionCompat"


# instance fields
.field mFilter:Landroid/window/TransitionFilter;

.field final mTransition:Landroid/window/RemoteTransition;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lcom/samsung/android/desktopsystemui/sharedlib/system/RemoteTransitionCompat$3;

    .line 2
    .line 3
    invoke-direct {v0}, Lcom/samsung/android/desktopsystemui/sharedlib/system/RemoteTransitionCompat$3;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Lcom/samsung/android/desktopsystemui/sharedlib/system/RemoteTransitionCompat;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 7
    .line 8
    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 3

    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 18
    iput-object v0, p0, Lcom/samsung/android/desktopsystemui/sharedlib/system/RemoteTransitionCompat;->mFilter:Landroid/window/TransitionFilter;

    .line 19
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v1

    .line 20
    sget-object v2, Landroid/window/RemoteTransition;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/window/RemoteTransition;

    and-int/lit8 v1, v1, 0x2

    if-nez v1, :cond_0

    move-object p1, v0

    goto :goto_0

    .line 21
    :cond_0
    sget-object v1, Landroid/window/TransitionFilter;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/window/TransitionFilter;

    .line 22
    :goto_0
    iput-object v2, p0, Lcom/samsung/android/desktopsystemui/sharedlib/system/RemoteTransitionCompat;->mTransition:Landroid/window/RemoteTransition;

    .line 23
    const-class v1, Landroid/annotation/NonNull;

    invoke-static {v1, v0, v2}, Lcom/android/internal/util/AnnotationValidations;->validate(Ljava/lang/Class;Landroid/annotation/NonNull;Ljava/lang/Object;)V

    .line 24
    iput-object p1, p0, Lcom/samsung/android/desktopsystemui/sharedlib/system/RemoteTransitionCompat;->mFilter:Landroid/window/TransitionFilter;

    return-void
.end method

.method public constructor <init>(Landroid/window/RemoteTransition;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput-object v0, p0, Lcom/samsung/android/desktopsystemui/sharedlib/system/RemoteTransitionCompat;->mFilter:Landroid/window/TransitionFilter;

    .line 3
    iput-object p1, p0, Lcom/samsung/android/desktopsystemui/sharedlib/system/RemoteTransitionCompat;->mTransition:Landroid/window/RemoteTransition;

    return-void
.end method

.method public constructor <init>(Landroid/window/RemoteTransition;Landroid/window/TransitionFilter;)V
    .locals 2

    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 13
    iput-object v0, p0, Lcom/samsung/android/desktopsystemui/sharedlib/system/RemoteTransitionCompat;->mFilter:Landroid/window/TransitionFilter;

    .line 14
    iput-object p1, p0, Lcom/samsung/android/desktopsystemui/sharedlib/system/RemoteTransitionCompat;->mTransition:Landroid/window/RemoteTransition;

    .line 15
    const-class v1, Landroid/annotation/NonNull;

    invoke-static {v1, v0, p1}, Lcom/android/internal/util/AnnotationValidations;->validate(Ljava/lang/Class;Landroid/annotation/NonNull;Ljava/lang/Object;)V

    .line 16
    iput-object p2, p0, Lcom/samsung/android/desktopsystemui/sharedlib/system/RemoteTransitionCompat;->mFilter:Landroid/window/TransitionFilter;

    return-void
.end method

.method public constructor <init>(Lcom/samsung/android/desktopsystemui/sharedlib/system/RecentsAnimationListener;Lcom/samsung/android/desktopsystemui/sharedlib/system/RecentsAnimationControllerCompat;Landroid/app/IApplicationThread;)V
    .locals 0

    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p3, 0x0

    .line 9
    iput-object p3, p0, Lcom/samsung/android/desktopsystemui/sharedlib/system/RemoteTransitionCompat;->mFilter:Landroid/window/TransitionFilter;

    .line 10
    new-instance p3, Lcom/samsung/android/desktopsystemui/sharedlib/system/RemoteTransitionCompat$2;

    invoke-direct {p3, p0, p2, p1}, Lcom/samsung/android/desktopsystemui/sharedlib/system/RemoteTransitionCompat$2;-><init>(Lcom/samsung/android/desktopsystemui/sharedlib/system/RemoteTransitionCompat;Lcom/samsung/android/desktopsystemui/sharedlib/system/RecentsAnimationControllerCompat;Lcom/samsung/android/desktopsystemui/sharedlib/system/RecentsAnimationListener;)V

    .line 11
    new-instance p1, Landroid/window/RemoteTransition;

    invoke-direct {p1, p3}, Landroid/window/RemoteTransition;-><init>(Landroid/window/IRemoteTransition;)V

    iput-object p1, p0, Lcom/samsung/android/desktopsystemui/sharedlib/system/RemoteTransitionCompat;->mTransition:Landroid/window/RemoteTransition;

    return-void
.end method

.method public constructor <init>(Lcom/samsung/android/desktopsystemui/sharedlib/system/RemoteTransitionRunner;Ljava/util/concurrent/Executor;Landroid/app/IApplicationThread;)V
    .locals 0

    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p3, 0x0

    .line 5
    iput-object p3, p0, Lcom/samsung/android/desktopsystemui/sharedlib/system/RemoteTransitionCompat;->mFilter:Landroid/window/TransitionFilter;

    .line 6
    new-instance p3, Lcom/samsung/android/desktopsystemui/sharedlib/system/RemoteTransitionCompat$1;

    invoke-direct {p3, p0, p2, p1}, Lcom/samsung/android/desktopsystemui/sharedlib/system/RemoteTransitionCompat$1;-><init>(Lcom/samsung/android/desktopsystemui/sharedlib/system/RemoteTransitionCompat;Ljava/util/concurrent/Executor;Lcom/samsung/android/desktopsystemui/sharedlib/system/RemoteTransitionRunner;)V

    .line 7
    new-instance p1, Landroid/window/RemoteTransition;

    invoke-direct {p1, p3}, Landroid/window/RemoteTransition;-><init>(Landroid/window/IRemoteTransition;)V

    iput-object p1, p0, Lcom/samsung/android/desktopsystemui/sharedlib/system/RemoteTransitionCompat;->mTransition:Landroid/window/RemoteTransition;

    return-void
.end method

.method private __metadata()V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1
    return-void
.end method


# virtual methods
.method public addHomeOpenCheck(Landroid/content/ComponentName;)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/samsung/android/desktopsystemui/sharedlib/system/RemoteTransitionCompat;->mFilter:Landroid/window/TransitionFilter;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    new-instance v0, Landroid/window/TransitionFilter;

    .line 6
    .line 7
    invoke-direct {v0}, Landroid/window/TransitionFilter;-><init>()V

    .line 8
    .line 9
    .line 10
    iput-object v0, p0, Lcom/samsung/android/desktopsystemui/sharedlib/system/RemoteTransitionCompat;->mFilter:Landroid/window/TransitionFilter;

    .line 11
    .line 12
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/desktopsystemui/sharedlib/system/RemoteTransitionCompat;->mFilter:Landroid/window/TransitionFilter;

    .line 13
    .line 14
    const/16 v1, 0x100

    .line 15
    .line 16
    iput v1, v0, Landroid/window/TransitionFilter;->mNotFlags:I

    .line 17
    .line 18
    new-instance v1, Landroid/window/TransitionFilter$Requirement;

    .line 19
    .line 20
    invoke-direct {v1}, Landroid/window/TransitionFilter$Requirement;-><init>()V

    .line 21
    .line 22
    .line 23
    new-instance v2, Landroid/window/TransitionFilter$Requirement;

    .line 24
    .line 25
    invoke-direct {v2}, Landroid/window/TransitionFilter$Requirement;-><init>()V

    .line 26
    .line 27
    .line 28
    filled-new-array {v1, v2}, [Landroid/window/TransitionFilter$Requirement;

    .line 29
    .line 30
    .line 31
    move-result-object v1

    .line 32
    iput-object v1, v0, Landroid/window/TransitionFilter;->mRequirements:[Landroid/window/TransitionFilter$Requirement;

    .line 33
    .line 34
    iget-object p0, p0, Lcom/samsung/android/desktopsystemui/sharedlib/system/RemoteTransitionCompat;->mFilter:Landroid/window/TransitionFilter;

    .line 35
    .line 36
    iget-object p0, p0, Landroid/window/TransitionFilter;->mRequirements:[Landroid/window/TransitionFilter$Requirement;

    .line 37
    .line 38
    const/4 v0, 0x0

    .line 39
    aget-object v0, p0, v0

    .line 40
    .line 41
    const/4 v1, 0x2

    .line 42
    iput v1, v0, Landroid/window/TransitionFilter$Requirement;->mActivityType:I

    .line 43
    .line 44
    iput-object p1, v0, Landroid/window/TransitionFilter$Requirement;->mTopActivity:Landroid/content/ComponentName;

    .line 45
    .line 46
    const/4 p1, 0x3

    .line 47
    const/4 v2, 0x1

    .line 48
    filled-new-array {v2, p1}, [I

    .line 49
    .line 50
    .line 51
    move-result-object p1

    .line 52
    iput-object p1, v0, Landroid/window/TransitionFilter$Requirement;->mModes:[I

    .line 53
    .line 54
    iput v2, v0, Landroid/window/TransitionFilter$Requirement;->mOrder:I

    .line 55
    .line 56
    aget-object p0, p0, v2

    .line 57
    .line 58
    iput v2, p0, Landroid/window/TransitionFilter$Requirement;->mActivityType:I

    .line 59
    .line 60
    const/4 p1, 0x4

    .line 61
    filled-new-array {v1, p1}, [I

    .line 62
    .line 63
    .line 64
    move-result-object p1

    .line 65
    iput-object p1, p0, Landroid/window/TransitionFilter$Requirement;->mModes:[I

    .line 66
    .line 67
    return-void
.end method

.method public describeContents()I
    .locals 0

    .line 1
    const/4 p0, 0x0

    .line 2
    return p0
.end method

.method public getFilter()Landroid/window/TransitionFilter;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/samsung/android/desktopsystemui/sharedlib/system/RemoteTransitionCompat;->mFilter:Landroid/window/TransitionFilter;

    .line 2
    .line 3
    return-object p0
.end method

.method public getTransition()Landroid/window/RemoteTransition;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/samsung/android/desktopsystemui/sharedlib/system/RemoteTransitionCompat;->mTransition:Landroid/window/RemoteTransition;

    .line 2
    .line 3
    return-object p0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/samsung/android/desktopsystemui/sharedlib/system/RemoteTransitionCompat;->mFilter:Landroid/window/TransitionFilter;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    const/4 v0, 0x2

    .line 6
    int-to-byte v0, v0

    .line 7
    goto :goto_0

    .line 8
    :cond_0
    const/4 v0, 0x0

    .line 9
    :goto_0
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByte(B)V

    .line 10
    .line 11
    .line 12
    iget-object v0, p0, Lcom/samsung/android/desktopsystemui/sharedlib/system/RemoteTransitionCompat;->mTransition:Landroid/window/RemoteTransition;

    .line 13
    .line 14
    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 15
    .line 16
    .line 17
    iget-object p0, p0, Lcom/samsung/android/desktopsystemui/sharedlib/system/RemoteTransitionCompat;->mFilter:Landroid/window/TransitionFilter;

    .line 18
    .line 19
    if-eqz p0, :cond_1

    .line 20
    .line 21
    invoke-virtual {p1, p0, p2}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 22
    .line 23
    .line 24
    :cond_1
    return-void
.end method
