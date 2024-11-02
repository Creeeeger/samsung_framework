.class public final Lcom/android/systemui/controls/ui/StatusBehavior$bind$1$1;
.super Ljava/lang/Object;
.source "qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic $it:Landroid/service/controls/Control;

.field public final synthetic this$0:Lcom/android/systemui/controls/ui/StatusBehavior;


# direct methods
.method public constructor <init>(Lcom/android/systemui/controls/ui/StatusBehavior;Landroid/service/controls/Control;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/systemui/controls/ui/StatusBehavior$bind$1$1;->this$0:Lcom/android/systemui/controls/ui/StatusBehavior;

    .line 2
    .line 3
    iput-object p2, p0, Lcom/android/systemui/controls/ui/StatusBehavior$bind$1$1;->$it:Landroid/service/controls/Control;

    .line 4
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 2

    .line 1
    iget-object p1, p0, Lcom/android/systemui/controls/ui/StatusBehavior$bind$1$1;->this$0:Lcom/android/systemui/controls/ui/StatusBehavior;

    .line 2
    .line 3
    invoke-virtual {p1}, Lcom/android/systemui/controls/ui/StatusBehavior;->getCvh()Lcom/android/systemui/controls/ui/ControlViewHolder;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    invoke-virtual {p1}, Lcom/android/systemui/controls/ui/ControlViewHolder;->getCustomControlViewHolder()Lcom/android/systemui/controls/ui/CustomControlViewHolder;

    .line 8
    .line 9
    .line 10
    move-result-object p1

    .line 11
    iget-object p1, p1, Lcom/android/systemui/controls/ui/CustomControlViewHolder;->customControlActionCoordinator:Lcom/android/systemui/controls/ui/CustomControlActionCoordinator;

    .line 12
    .line 13
    if-eqz p1, :cond_0

    .line 14
    .line 15
    iget-object v0, p0, Lcom/android/systemui/controls/ui/StatusBehavior$bind$1$1;->this$0:Lcom/android/systemui/controls/ui/StatusBehavior;

    .line 16
    .line 17
    invoke-virtual {v0}, Lcom/android/systemui/controls/ui/StatusBehavior;->getCvh()Lcom/android/systemui/controls/ui/ControlViewHolder;

    .line 18
    .line 19
    .line 20
    move-result-object v0

    .line 21
    iget-object v1, p0, Lcom/android/systemui/controls/ui/StatusBehavior$bind$1$1;->$it:Landroid/service/controls/Control;

    .line 22
    .line 23
    invoke-virtual {v1}, Landroid/service/controls/Control;->getControlTemplate()Landroid/service/controls/templates/ControlTemplate;

    .line 24
    .line 25
    .line 26
    move-result-object v1

    .line 27
    invoke-virtual {v1}, Landroid/service/controls/templates/ControlTemplate;->getTemplateId()Ljava/lang/String;

    .line 28
    .line 29
    .line 30
    move-result-object v1

    .line 31
    iget-object p0, p0, Lcom/android/systemui/controls/ui/StatusBehavior$bind$1$1;->$it:Landroid/service/controls/Control;

    .line 32
    .line 33
    check-cast p1, Lcom/android/systemui/controls/ui/ControlActionCoordinatorImpl;

    .line 34
    .line 35
    invoke-virtual {p1, v0, v1, p0}, Lcom/android/systemui/controls/ui/ControlActionCoordinatorImpl;->customTouch(Lcom/android/systemui/controls/ui/ControlViewHolder;Ljava/lang/String;Landroid/service/controls/Control;)V

    .line 36
    .line 37
    .line 38
    :cond_0
    return-void
.end method
