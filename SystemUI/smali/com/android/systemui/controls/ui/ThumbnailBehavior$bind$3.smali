.class public final Lcom/android/systemui/controls/ui/ThumbnailBehavior$bind$3;
.super Ljava/lang/Object;
.source "qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic $clipLayer:Landroid/graphics/drawable/ClipDrawable;

.field public final synthetic $colorOffset:I

.field public final synthetic this$0:Lcom/android/systemui/controls/ui/ThumbnailBehavior;


# direct methods
.method public constructor <init>(Lcom/android/systemui/controls/ui/ThumbnailBehavior;Landroid/graphics/drawable/ClipDrawable;I)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/systemui/controls/ui/ThumbnailBehavior$bind$3;->this$0:Lcom/android/systemui/controls/ui/ThumbnailBehavior;

    .line 2
    .line 3
    iput-object p2, p0, Lcom/android/systemui/controls/ui/ThumbnailBehavior$bind$3;->$clipLayer:Landroid/graphics/drawable/ClipDrawable;

    .line 4
    .line 5
    iput p3, p0, Lcom/android/systemui/controls/ui/ThumbnailBehavior$bind$3;->$colorOffset:I

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
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/android/systemui/controls/ui/ThumbnailBehavior$bind$3;->this$0:Lcom/android/systemui/controls/ui/ThumbnailBehavior;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/android/systemui/controls/ui/ThumbnailBehavior;->getTemplate()Landroid/service/controls/templates/ThumbnailTemplate;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    invoke-virtual {v0}, Landroid/service/controls/templates/ThumbnailTemplate;->getThumbnail()Landroid/graphics/drawable/Icon;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    const/4 v1, 0x0

    .line 12
    if-eqz v0, :cond_1

    .line 13
    .line 14
    iget-object v2, p0, Lcom/android/systemui/controls/ui/ThumbnailBehavior$bind$3;->this$0:Lcom/android/systemui/controls/ui/ThumbnailBehavior;

    .line 15
    .line 16
    iget-object v2, v2, Lcom/android/systemui/controls/ui/ThumbnailBehavior;->canUseIconPredicate:Lcom/android/systemui/controls/ui/CanUseIconPredicate;

    .line 17
    .line 18
    invoke-interface {v2, v0}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 19
    .line 20
    .line 21
    move-result-object v2

    .line 22
    check-cast v2, Ljava/lang/Boolean;

    .line 23
    .line 24
    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    .line 25
    .line 26
    .line 27
    move-result v2

    .line 28
    if-eqz v2, :cond_0

    .line 29
    .line 30
    goto :goto_0

    .line 31
    :cond_0
    move-object v0, v1

    .line 32
    :goto_0
    if-eqz v0, :cond_1

    .line 33
    .line 34
    iget-object v1, p0, Lcom/android/systemui/controls/ui/ThumbnailBehavior$bind$3;->this$0:Lcom/android/systemui/controls/ui/ThumbnailBehavior;

    .line 35
    .line 36
    invoke-virtual {v1}, Lcom/android/systemui/controls/ui/ThumbnailBehavior;->getCvh()Lcom/android/systemui/controls/ui/ControlViewHolder;

    .line 37
    .line 38
    .line 39
    move-result-object v1

    .line 40
    iget-object v1, v1, Lcom/android/systemui/controls/ui/ControlViewHolder;->context:Landroid/content/Context;

    .line 41
    .line 42
    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Icon;->loadDrawable(Landroid/content/Context;)Landroid/graphics/drawable/Drawable;

    .line 43
    .line 44
    .line 45
    move-result-object v1

    .line 46
    :cond_1
    iget-object v0, p0, Lcom/android/systemui/controls/ui/ThumbnailBehavior$bind$3;->this$0:Lcom/android/systemui/controls/ui/ThumbnailBehavior;

    .line 47
    .line 48
    invoke-virtual {v0}, Lcom/android/systemui/controls/ui/ThumbnailBehavior;->getCvh()Lcom/android/systemui/controls/ui/ControlViewHolder;

    .line 49
    .line 50
    .line 51
    move-result-object v0

    .line 52
    iget-object v0, v0, Lcom/android/systemui/controls/ui/ControlViewHolder;->uiExecutor:Lcom/android/systemui/util/concurrency/DelayableExecutor;

    .line 53
    .line 54
    new-instance v2, Lcom/android/systemui/controls/ui/ThumbnailBehavior$bind$3$1;

    .line 55
    .line 56
    iget-object v3, p0, Lcom/android/systemui/controls/ui/ThumbnailBehavior$bind$3;->this$0:Lcom/android/systemui/controls/ui/ThumbnailBehavior;

    .line 57
    .line 58
    iget-object v4, p0, Lcom/android/systemui/controls/ui/ThumbnailBehavior$bind$3;->$clipLayer:Landroid/graphics/drawable/ClipDrawable;

    .line 59
    .line 60
    iget p0, p0, Lcom/android/systemui/controls/ui/ThumbnailBehavior$bind$3;->$colorOffset:I

    .line 61
    .line 62
    invoke-direct {v2, v3, v1, v4, p0}, Lcom/android/systemui/controls/ui/ThumbnailBehavior$bind$3$1;-><init>(Lcom/android/systemui/controls/ui/ThumbnailBehavior;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/ClipDrawable;I)V

    .line 63
    .line 64
    .line 65
    check-cast v0, Lcom/android/systemui/util/concurrency/ExecutorImpl;

    .line 66
    .line 67
    invoke-virtual {v0, v2}, Lcom/android/systemui/util/concurrency/ExecutorImpl;->execute(Ljava/lang/Runnable;)V

    .line 68
    .line 69
    .line 70
    return-void
.end method
