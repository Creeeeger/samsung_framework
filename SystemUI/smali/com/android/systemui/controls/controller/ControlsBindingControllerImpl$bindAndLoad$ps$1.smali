.class public final Lcom/android/systemui/controls/controller/ControlsBindingControllerImpl$bindAndLoad$ps$1;
.super Landroid/service/controls/IControlsProviderInfoSubscriber$Stub;
.source "qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f"


# instance fields
.field public final synthetic $consumer:Ljava/util/function/Consumer;


# direct methods
.method public constructor <init>(Ljava/util/function/Consumer;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/Consumer<",
            "Landroid/service/controls/ControlsProviderInfo;",
            ">;)V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/android/systemui/controls/controller/ControlsBindingControllerImpl$bindAndLoad$ps$1;->$consumer:Ljava/util/function/Consumer;

    .line 2
    .line 3
    invoke-direct {p0}, Landroid/service/controls/IControlsProviderInfoSubscriber$Stub;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final onNext(Landroid/os/IBinder;Landroid/service/controls/ControlsProviderInfo;)V
    .locals 0

    .line 1
    if-eqz p2, :cond_0

    .line 2
    .line 3
    iget-object p0, p0, Lcom/android/systemui/controls/controller/ControlsBindingControllerImpl$bindAndLoad$ps$1;->$consumer:Ljava/util/function/Consumer;

    .line 4
    .line 5
    invoke-interface {p0, p2}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    .line 6
    .line 7
    .line 8
    :cond_0
    return-void
.end method
