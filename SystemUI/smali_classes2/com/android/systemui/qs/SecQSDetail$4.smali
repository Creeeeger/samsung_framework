.class public final Lcom/android/systemui/qs/SecQSDetail$4;
.super Landroid/animation/AnimatorListenerAdapter;
.source "qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f"


# instance fields
.field public final synthetic this$0:Lcom/android/systemui/qs/SecQSDetail;


# direct methods
.method public constructor <init>(Lcom/android/systemui/qs/SecQSDetail;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/systemui/qs/SecQSDetail$4;->this$0:Lcom/android/systemui/qs/SecQSDetail;

    .line 2
    .line 3
    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final onAnimationEnd(Landroid/animation/Animator;)V
    .locals 1

    .line 1
    iget-object p1, p0, Lcom/android/systemui/qs/SecQSDetail$4;->this$0:Lcom/android/systemui/qs/SecQSDetail;

    .line 2
    .line 3
    iget-object p1, p1, Lcom/android/systemui/qs/SecQSDetail;->mDetailContent:Landroid/view/ViewGroup;

    .line 4
    .line 5
    invoke-virtual {p1}, Landroid/view/ViewGroup;->removeAllViews()V

    .line 6
    .line 7
    .line 8
    iget-object p1, p0, Lcom/android/systemui/qs/SecQSDetail$4;->this$0:Lcom/android/systemui/qs/SecQSDetail;

    .line 9
    .line 10
    const/4 v0, 0x4

    .line 11
    invoke-virtual {p1, v0}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 12
    .line 13
    .line 14
    iget-object p0, p0, Lcom/android/systemui/qs/SecQSDetail$4;->this$0:Lcom/android/systemui/qs/SecQSDetail;

    .line 15
    .line 16
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 17
    .line 18
    .line 19
    return-void
.end method
