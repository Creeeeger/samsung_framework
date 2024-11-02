.class final Lcom/android/systemui/controls/ui/ControlActionCoordinatorImpl$setValue$1;
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


# instance fields
.field final synthetic $cvh:Lcom/android/systemui/controls/ui/ControlViewHolder;

.field final synthetic $newValue:F

.field final synthetic $templateId:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/android/systemui/controls/ui/ControlViewHolder;Ljava/lang/String;F)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/systemui/controls/ui/ControlActionCoordinatorImpl$setValue$1;->$cvh:Lcom/android/systemui/controls/ui/ControlViewHolder;

    .line 2
    .line 3
    iput-object p2, p0, Lcom/android/systemui/controls/ui/ControlActionCoordinatorImpl$setValue$1;->$templateId:Ljava/lang/String;

    .line 4
    .line 5
    iput p3, p0, Lcom/android/systemui/controls/ui/ControlActionCoordinatorImpl$setValue$1;->$newValue:F

    .line 6
    .line 7
    const/4 p1, 0x0

    .line 8
    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    .line 9
    .line 10
    .line 11
    return-void
.end method


# virtual methods
.method public final invoke()Ljava/lang/Object;
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/android/systemui/controls/ui/ControlActionCoordinatorImpl$setValue$1;->$cvh:Lcom/android/systemui/controls/ui/ControlViewHolder;

    .line 2
    .line 3
    new-instance v1, Landroid/service/controls/actions/FloatAction;

    .line 4
    .line 5
    iget-object v2, p0, Lcom/android/systemui/controls/ui/ControlActionCoordinatorImpl$setValue$1;->$templateId:Ljava/lang/String;

    .line 6
    .line 7
    iget p0, p0, Lcom/android/systemui/controls/ui/ControlActionCoordinatorImpl$setValue$1;->$newValue:F

    .line 8
    .line 9
    invoke-direct {v1, v2, p0}, Landroid/service/controls/actions/FloatAction;-><init>(Ljava/lang/String;F)V

    .line 10
    .line 11
    .line 12
    invoke-virtual {v0, v1}, Lcom/android/systemui/controls/ui/ControlViewHolder;->action(Landroid/service/controls/actions/ControlAction;)V

    .line 13
    .line 14
    .line 15
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 16
    .line 17
    return-object p0
.end method
