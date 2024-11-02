.class public final Lcom/android/systemui/volume/util/DeviceStateManagerWrapper$registerFoldStateListener$1;
.super Ljava/lang/Object;
.source "qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic $foldState:Ljava/util/function/Consumer;

.field public final synthetic this$0:Lcom/android/systemui/volume/util/DeviceStateManagerWrapper;


# direct methods
.method public constructor <init>(Ljava/util/function/Consumer;Lcom/android/systemui/volume/util/DeviceStateManagerWrapper;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/Consumer<",
            "Ljava/lang/Boolean;",
            ">;",
            "Lcom/android/systemui/volume/util/DeviceStateManagerWrapper;",
            ")V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/android/systemui/volume/util/DeviceStateManagerWrapper$registerFoldStateListener$1;->$foldState:Ljava/util/function/Consumer;

    .line 2
    .line 3
    iput-object p2, p0, Lcom/android/systemui/volume/util/DeviceStateManagerWrapper$registerFoldStateListener$1;->this$0:Lcom/android/systemui/volume/util/DeviceStateManagerWrapper;

    .line 4
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 2

    .line 1
    check-cast p1, Ljava/lang/Boolean;

    .line 2
    .line 3
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    .line 4
    .line 5
    .line 6
    move-result p1

    .line 7
    iget-object v0, p0, Lcom/android/systemui/volume/util/DeviceStateManagerWrapper$registerFoldStateListener$1;->$foldState:Ljava/util/function/Consumer;

    .line 8
    .line 9
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 10
    .line 11
    .line 12
    move-result-object v1

    .line 13
    invoke-interface {v0, v1}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    .line 14
    .line 15
    .line 16
    iget-object p0, p0, Lcom/android/systemui/volume/util/DeviceStateManagerWrapper$registerFoldStateListener$1;->this$0:Lcom/android/systemui/volume/util/DeviceStateManagerWrapper;

    .line 17
    .line 18
    iput-boolean p1, p0, Lcom/android/systemui/volume/util/DeviceStateManagerWrapper;->isFolded:Z

    .line 19
    .line 20
    return-void
.end method
