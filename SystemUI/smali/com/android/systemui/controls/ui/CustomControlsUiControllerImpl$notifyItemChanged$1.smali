.class public final Lcom/android/systemui/controls/ui/CustomControlsUiControllerImpl$notifyItemChanged$1;
.super Ljava/lang/Object;
.source "qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic $model:Lcom/android/systemui/controls/management/model/MainControlModel;

.field public final synthetic $position:I

.field public final synthetic this$0:Lcom/android/systemui/controls/ui/CustomControlsUiControllerImpl;


# direct methods
.method public constructor <init>(Lcom/android/systemui/controls/ui/CustomControlsUiControllerImpl;ILcom/android/systemui/controls/management/model/MainControlModel;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/systemui/controls/ui/CustomControlsUiControllerImpl$notifyItemChanged$1;->this$0:Lcom/android/systemui/controls/ui/CustomControlsUiControllerImpl;

    .line 2
    .line 3
    iput p2, p0, Lcom/android/systemui/controls/ui/CustomControlsUiControllerImpl$notifyItemChanged$1;->$position:I

    .line 4
    .line 5
    iput-object p3, p0, Lcom/android/systemui/controls/ui/CustomControlsUiControllerImpl$notifyItemChanged$1;->$model:Lcom/android/systemui/controls/management/model/MainControlModel;

    .line 6
    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    .line 9
    .line 10
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/android/systemui/controls/ui/CustomControlsUiControllerImpl$notifyItemChanged$1;->this$0:Lcom/android/systemui/controls/ui/CustomControlsUiControllerImpl;

    .line 2
    .line 3
    iget v1, p0, Lcom/android/systemui/controls/ui/CustomControlsUiControllerImpl$notifyItemChanged$1;->$position:I

    .line 4
    .line 5
    iget-object p0, p0, Lcom/android/systemui/controls/ui/CustomControlsUiControllerImpl$notifyItemChanged$1;->$model:Lcom/android/systemui/controls/management/model/MainControlModel;

    .line 6
    .line 7
    sget v2, Lcom/android/systemui/controls/ui/CustomControlsUiControllerImpl;->$r8$clinit:I

    .line 8
    .line 9
    invoke-virtual {v0, v1, p0}, Lcom/android/systemui/controls/ui/CustomControlsUiControllerImpl;->notifyItemChanged(ILcom/android/systemui/controls/management/model/MainControlModel;)V

    .line 10
    .line 11
    .line 12
    return-void
.end method
