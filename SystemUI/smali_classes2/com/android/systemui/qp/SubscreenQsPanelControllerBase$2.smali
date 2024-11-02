.class public final Lcom/android/systemui/qp/SubscreenQsPanelControllerBase$2;
.super Ljava/lang/Object;
.source "qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f"

# interfaces
.implements Landroid/view/View$OnLongClickListener;


# instance fields
.field public final synthetic this$0:Lcom/android/systemui/qp/SubscreenQsPanelControllerBase;


# direct methods
.method public constructor <init>(Lcom/android/systemui/qp/SubscreenQsPanelControllerBase;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/systemui/qp/SubscreenQsPanelControllerBase$2;->this$0:Lcom/android/systemui/qp/SubscreenQsPanelControllerBase;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final onLongClick(Landroid/view/View;)Z
    .locals 1

    .line 1
    const-class p1, Lcom/android/systemui/qp/util/SubscreenUtil;

    .line 2
    .line 3
    invoke-static {p1}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    check-cast p1, Lcom/android/systemui/qp/util/SubscreenUtil;

    .line 8
    .line 9
    iget-object p0, p0, Lcom/android/systemui/qp/SubscreenQsPanelControllerBase$2;->this$0:Lcom/android/systemui/qp/SubscreenQsPanelControllerBase;

    .line 10
    .line 11
    iget-object p0, p0, Lcom/android/systemui/qp/SubscreenQsPanelControllerBase;->mContext:Landroid/content/Context;

    .line 12
    .line 13
    const-string v0, "com.android.systemui.qp.customize.SubscreenCustomizerActivity"

    .line 14
    .line 15
    invoke-virtual {p1, p0, v0}, Lcom/android/systemui/qp/util/SubscreenUtil;->startActivity(Landroid/content/Context;Ljava/lang/String;)V

    .line 16
    .line 17
    .line 18
    const/4 p0, 0x1

    .line 19
    return p0
.end method
