.class public final Lcom/android/systemui/controls/management/adapter/StructureControlReorderHolder$bindData$2;
.super Ljava/lang/Object;
.source "qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# instance fields
.field public final synthetic this$0:Lcom/android/systemui/controls/management/adapter/StructureControlReorderHolder;


# direct methods
.method public constructor <init>(Lcom/android/systemui/controls/management/adapter/StructureControlReorderHolder;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/systemui/controls/management/adapter/StructureControlReorderHolder$bindData$2;->this$0:Lcom/android/systemui/controls/management/adapter/StructureControlReorderHolder;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 0

    .line 1
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    .line 2
    .line 3
    .line 4
    move-result p1

    .line 5
    if-nez p1, :cond_0

    .line 6
    .line 7
    iget-object p0, p0, Lcom/android/systemui/controls/management/adapter/StructureControlReorderHolder$bindData$2;->this$0:Lcom/android/systemui/controls/management/adapter/StructureControlReorderHolder;

    .line 8
    .line 9
    iget-object p1, p0, Lcom/android/systemui/controls/management/adapter/StructureControlReorderHolder;->actionCallback:Ljava/util/function/Consumer;

    .line 10
    .line 11
    invoke-interface {p1, p0}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    .line 12
    .line 13
    .line 14
    :cond_0
    const/4 p0, 0x1

    .line 15
    return p0
.end method
