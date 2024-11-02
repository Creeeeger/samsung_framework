.class public final synthetic Lcom/android/keyguard/KeyguardVisibilityHelper$$ExternalSyntheticLambda2;
.super Ljava/lang/Object;
.source "qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:Lcom/android/keyguard/KeyguardVisibilityHelper;

.field public final synthetic f$1:Landroid/view/View;

.field public final synthetic f$2:Ljava/util/function/IntConsumer;


# direct methods
.method public synthetic constructor <init>(Lcom/android/keyguard/KeyguardVisibilityHelper;Landroid/view/View;Lcom/android/systemui/facewidget/plugin/FaceWidgetContainerWrapper$$ExternalSyntheticLambda0;I)V
    .locals 0

    .line 1
    iput p4, p0, Lcom/android/keyguard/KeyguardVisibilityHelper$$ExternalSyntheticLambda2;->$r8$classId:I

    .line 2
    .line 3
    iput-object p1, p0, Lcom/android/keyguard/KeyguardVisibilityHelper$$ExternalSyntheticLambda2;->f$0:Lcom/android/keyguard/KeyguardVisibilityHelper;

    .line 4
    .line 5
    iput-object p2, p0, Lcom/android/keyguard/KeyguardVisibilityHelper$$ExternalSyntheticLambda2;->f$1:Landroid/view/View;

    .line 6
    .line 7
    iput-object p3, p0, Lcom/android/keyguard/KeyguardVisibilityHelper$$ExternalSyntheticLambda2;->f$2:Ljava/util/function/IntConsumer;

    .line 8
    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 10
    .line 11
    .line 12
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    .line 1
    iget v0, p0, Lcom/android/keyguard/KeyguardVisibilityHelper$$ExternalSyntheticLambda2;->$r8$classId:I

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    packed-switch v0, :pswitch_data_0

    .line 5
    .line 6
    .line 7
    goto :goto_0

    .line 8
    :pswitch_0
    iget-object v0, p0, Lcom/android/keyguard/KeyguardVisibilityHelper$$ExternalSyntheticLambda2;->f$0:Lcom/android/keyguard/KeyguardVisibilityHelper;

    .line 9
    .line 10
    iget-object v2, p0, Lcom/android/keyguard/KeyguardVisibilityHelper$$ExternalSyntheticLambda2;->f$1:Landroid/view/View;

    .line 11
    .line 12
    iget-object p0, p0, Lcom/android/keyguard/KeyguardVisibilityHelper$$ExternalSyntheticLambda2;->f$2:Ljava/util/function/IntConsumer;

    .line 13
    .line 14
    iput-boolean v1, v0, Lcom/android/keyguard/KeyguardVisibilityHelper;->mKeyguardViewVisibilityAnimating:Z

    .line 15
    .line 16
    const/16 v0, 0x8

    .line 17
    .line 18
    invoke-virtual {v2, v0}, Landroid/view/View;->setVisibility(I)V

    .line 19
    .line 20
    .line 21
    if-eqz p0, :cond_0

    .line 22
    .line 23
    invoke-interface {p0, v0}, Ljava/util/function/IntConsumer;->accept(I)V

    .line 24
    .line 25
    .line 26
    :cond_0
    return-void

    .line 27
    :goto_0
    iget-object v0, p0, Lcom/android/keyguard/KeyguardVisibilityHelper$$ExternalSyntheticLambda2;->f$0:Lcom/android/keyguard/KeyguardVisibilityHelper;

    .line 28
    .line 29
    iget-object v2, p0, Lcom/android/keyguard/KeyguardVisibilityHelper$$ExternalSyntheticLambda2;->f$1:Landroid/view/View;

    .line 30
    .line 31
    iget-object p0, p0, Lcom/android/keyguard/KeyguardVisibilityHelper$$ExternalSyntheticLambda2;->f$2:Ljava/util/function/IntConsumer;

    .line 32
    .line 33
    iput-boolean v1, v0, Lcom/android/keyguard/KeyguardVisibilityHelper;->mKeyguardViewVisibilityAnimating:Z

    .line 34
    .line 35
    const/4 v0, 0x4

    .line 36
    invoke-virtual {v2, v0}, Landroid/view/View;->setVisibility(I)V

    .line 37
    .line 38
    .line 39
    const/4 v1, 0x0

    .line 40
    invoke-virtual {v2, v1}, Landroid/view/View;->setTranslationY(F)V

    .line 41
    .line 42
    .line 43
    if-eqz p0, :cond_1

    .line 44
    .line 45
    invoke-interface {p0, v0}, Ljava/util/function/IntConsumer;->accept(I)V

    .line 46
    .line 47
    .line 48
    :cond_1
    return-void

    .line 49
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
