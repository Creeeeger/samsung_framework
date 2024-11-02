.class public final synthetic Lcom/android/systemui/qs/SecQSDetail$2$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/android/systemui/qs/SecQSDetail$2;

.field public final synthetic f$1:I

.field public final synthetic f$2:I


# direct methods
.method public synthetic constructor <init>(Lcom/android/systemui/qs/SecQSDetail$2;II)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/android/systemui/qs/SecQSDetail$2$$ExternalSyntheticLambda0;->f$0:Lcom/android/systemui/qs/SecQSDetail$2;

    .line 5
    .line 6
    iput p2, p0, Lcom/android/systemui/qs/SecQSDetail$2$$ExternalSyntheticLambda0;->f$1:I

    .line 7
    .line 8
    iput p3, p0, Lcom/android/systemui/qs/SecQSDetail$2$$ExternalSyntheticLambda0;->f$2:I

    .line 9
    .line 10
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/android/systemui/qs/SecQSDetail$2$$ExternalSyntheticLambda0;->f$0:Lcom/android/systemui/qs/SecQSDetail$2;

    .line 2
    .line 3
    iget v1, p0, Lcom/android/systemui/qs/SecQSDetail$2$$ExternalSyntheticLambda0;->f$1:I

    .line 4
    .line 5
    iget p0, p0, Lcom/android/systemui/qs/SecQSDetail$2$$ExternalSyntheticLambda0;->f$2:I

    .line 6
    .line 7
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 8
    .line 9
    .line 10
    sget v2, Lcom/android/systemui/qs/SecQSDetail;->$r8$clinit:I

    .line 11
    .line 12
    const v2, 0x7f0a085d

    .line 13
    .line 14
    .line 15
    iget-object v0, v0, Lcom/android/systemui/qs/SecQSDetail$2;->this$0:Lcom/android/systemui/qs/SecQSDetail;

    .line 16
    .line 17
    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    .line 18
    .line 19
    .line 20
    move-result-object v0

    .line 21
    check-cast v0, Landroid/widget/ScrollView;

    .line 22
    .line 23
    if-eqz v0, :cond_0

    .line 24
    .line 25
    invoke-virtual {v0, v1, p0}, Landroid/widget/ScrollView;->scrollTo(II)V

    .line 26
    .line 27
    .line 28
    :cond_0
    return-void
.end method
