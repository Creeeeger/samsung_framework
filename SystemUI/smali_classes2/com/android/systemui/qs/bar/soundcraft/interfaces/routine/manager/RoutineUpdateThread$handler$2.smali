.class final Lcom/android/systemui/qs/bar/soundcraft/interfaces/routine/manager/RoutineUpdateThread$handler$2;
.super Lkotlin/jvm/internal/Lambda;
.source "qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function0;"
    }
.end annotation


# static fields
.field public static final INSTANCE:Lcom/android/systemui/qs/bar/soundcraft/interfaces/routine/manager/RoutineUpdateThread$handler$2;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lcom/android/systemui/qs/bar/soundcraft/interfaces/routine/manager/RoutineUpdateThread$handler$2;

    .line 2
    .line 3
    invoke-direct {v0}, Lcom/android/systemui/qs/bar/soundcraft/interfaces/routine/manager/RoutineUpdateThread$handler$2;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Lcom/android/systemui/qs/bar/soundcraft/interfaces/routine/manager/RoutineUpdateThread$handler$2;->INSTANCE:Lcom/android/systemui/qs/bar/soundcraft/interfaces/routine/manager/RoutineUpdateThread$handler$2;

    .line 7
    .line 8
    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    invoke-direct {p0, v0}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    .line 3
    .line 4
    .line 5
    return-void
.end method


# virtual methods
.method public final invoke()Ljava/lang/Object;
    .locals 1

    .line 1
    new-instance p0, Landroid/os/Handler;

    .line 2
    .line 3
    sget-object v0, Lcom/android/systemui/qs/bar/soundcraft/interfaces/routine/manager/RoutineUpdateThread;->INSTANCE:Lcom/android/systemui/qs/bar/soundcraft/interfaces/routine/manager/RoutineUpdateThread;

    .line 4
    .line 5
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 6
    .line 7
    .line 8
    sget-object v0, Lcom/android/systemui/qs/bar/soundcraft/interfaces/routine/manager/RoutineUpdateThread;->thread$delegate:Lkotlin/Lazy;

    .line 9
    .line 10
    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    .line 11
    .line 12
    .line 13
    move-result-object v0

    .line 14
    check-cast v0, Landroid/os/HandlerThread;

    .line 15
    .line 16
    invoke-virtual {v0}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    .line 17
    .line 18
    .line 19
    move-result-object v0

    .line 20
    invoke-direct {p0, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 21
    .line 22
    .line 23
    return-object p0
.end method
