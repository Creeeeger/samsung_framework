.class public final Lcom/samsung/systemui/splugins/volume/VolumeUnsubscriber;
.super Ljava/lang/Object;
.source "qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f"

# interfaces
.implements Lcom/samsung/systemui/splugins/volume/VolumeDisposable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/systemui/splugins/volume/VolumeUnsubscriber$Companion;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lcom/samsung/systemui/splugins/volume/VolumeDisposable;"
    }
.end annotation


# static fields
.field public static final Companion:Lcom/samsung/systemui/splugins/volume/VolumeUnsubscriber$Companion;

.field private static final TAG:Ljava/lang/String; = "VolumeUnsubscriber"


# instance fields
.field private final handler$delegate:Lkotlin/Lazy;

.field private final observer:Lcom/samsung/systemui/splugins/volume/VolumeObserver;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/samsung/systemui/splugins/volume/VolumeObserver<",
            "TT;>;"
        }
    .end annotation
.end field

.field private final observers:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/samsung/systemui/splugins/volume/VolumeObserver<",
            "TT;>;>;"
        }
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lcom/samsung/systemui/splugins/volume/VolumeUnsubscriber$Companion;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-direct {v0, v1}, Lcom/samsung/systemui/splugins/volume/VolumeUnsubscriber$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 5
    .line 6
    .line 7
    sput-object v0, Lcom/samsung/systemui/splugins/volume/VolumeUnsubscriber;->Companion:Lcom/samsung/systemui/splugins/volume/VolumeUnsubscriber$Companion;

    .line 8
    .line 9
    return-void
.end method

.method public constructor <init>(Ljava/util/ArrayList;Lcom/samsung/systemui/splugins/volume/VolumeObserver;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/samsung/systemui/splugins/volume/VolumeObserver<",
            "TT;>;>;",
            "Lcom/samsung/systemui/splugins/volume/VolumeObserver<",
            "TT;>;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/samsung/systemui/splugins/volume/VolumeUnsubscriber;->observers:Ljava/util/ArrayList;

    .line 5
    .line 6
    iput-object p2, p0, Lcom/samsung/systemui/splugins/volume/VolumeUnsubscriber;->observer:Lcom/samsung/systemui/splugins/volume/VolumeObserver;

    .line 7
    .line 8
    sget-object p1, Lcom/samsung/systemui/splugins/volume/VolumeUnsubscriber$handler$2;->INSTANCE:Lcom/samsung/systemui/splugins/volume/VolumeUnsubscriber$handler$2;

    .line 9
    .line 10
    invoke-static {p1}, Lkotlin/LazyKt__LazyJVMKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    .line 11
    .line 12
    .line 13
    move-result-object p1

    .line 14
    iput-object p1, p0, Lcom/samsung/systemui/splugins/volume/VolumeUnsubscriber;->handler$delegate:Lkotlin/Lazy;

    .line 15
    .line 16
    return-void
.end method

.method public static final synthetic access$getObserver$p(Lcom/samsung/systemui/splugins/volume/VolumeUnsubscriber;)Lcom/samsung/systemui/splugins/volume/VolumeObserver;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/samsung/systemui/splugins/volume/VolumeUnsubscriber;->observer:Lcom/samsung/systemui/splugins/volume/VolumeObserver;

    .line 2
    .line 3
    return-object p0
.end method

.method public static final synthetic access$getObservers$p(Lcom/samsung/systemui/splugins/volume/VolumeUnsubscriber;)Ljava/util/ArrayList;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/samsung/systemui/splugins/volume/VolumeUnsubscriber;->observers:Ljava/util/ArrayList;

    .line 2
    .line 3
    return-object p0
.end method

.method private final getHandler()Landroid/os/Handler;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/samsung/systemui/splugins/volume/VolumeUnsubscriber;->handler$delegate:Lkotlin/Lazy;

    .line 2
    .line 3
    invoke-interface {p0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    check-cast p0, Landroid/os/Handler;

    .line 8
    .line 9
    return-object p0
.end method


# virtual methods
.method public dispose()V
    .locals 3

    .line 1
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    .line 6
    .line 7
    .line 8
    move-result-object v1

    .line 9
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 10
    .line 11
    .line 12
    move-result v0

    .line 13
    if-eqz v0, :cond_0

    .line 14
    .line 15
    iget-object v0, p0, Lcom/samsung/systemui/splugins/volume/VolumeUnsubscriber;->observer:Lcom/samsung/systemui/splugins/volume/VolumeObserver;

    .line 16
    .line 17
    new-instance v1, Ljava/lang/StringBuilder;

    .line 18
    .line 19
    const-string v2, "dispose() : main thread, remove observer="

    .line 20
    .line 21
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 22
    .line 23
    .line 24
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 25
    .line 26
    .line 27
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 28
    .line 29
    .line 30
    move-result-object v0

    .line 31
    const-string v1, "VolumeUnsubscriber"

    .line 32
    .line 33
    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 34
    .line 35
    .line 36
    iget-object v0, p0, Lcom/samsung/systemui/splugins/volume/VolumeUnsubscriber;->observers:Ljava/util/ArrayList;

    .line 37
    .line 38
    iget-object p0, p0, Lcom/samsung/systemui/splugins/volume/VolumeUnsubscriber;->observer:Lcom/samsung/systemui/splugins/volume/VolumeObserver;

    .line 39
    .line 40
    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 41
    .line 42
    .line 43
    goto :goto_0

    .line 44
    :cond_0
    invoke-direct {p0}, Lcom/samsung/systemui/splugins/volume/VolumeUnsubscriber;->getHandler()Landroid/os/Handler;

    .line 45
    .line 46
    .line 47
    move-result-object v0

    .line 48
    new-instance v1, Lcom/samsung/systemui/splugins/volume/VolumeUnsubscriber$dispose$1;

    .line 49
    .line 50
    invoke-direct {v1, p0}, Lcom/samsung/systemui/splugins/volume/VolumeUnsubscriber$dispose$1;-><init>(Lcom/samsung/systemui/splugins/volume/VolumeUnsubscriber;)V

    .line 51
    .line 52
    .line 53
    invoke-virtual {v0, v1}, Landroid/os/Handler;->postAtFrontOfQueue(Ljava/lang/Runnable;)Z

    .line 54
    .line 55
    .line 56
    :goto_0
    return-void
.end method
