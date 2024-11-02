.class public final Lcom/android/systemui/qs/AutoSizingList$1;
.super Landroid/database/DataSetObserver;
.source "qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f"


# instance fields
.field public final synthetic this$0:Lcom/android/systemui/qs/AutoSizingList;


# direct methods
.method public constructor <init>(Lcom/android/systemui/qs/AutoSizingList;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/systemui/qs/AutoSizingList$1;->this$0:Lcom/android/systemui/qs/AutoSizingList;

    .line 2
    .line 3
    invoke-direct {p0}, Landroid/database/DataSetObserver;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final onChanged()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/systemui/qs/AutoSizingList$1;->this$0:Lcom/android/systemui/qs/AutoSizingList;

    .line 2
    .line 3
    sget v1, Lcom/android/systemui/qs/AutoSizingList;->$r8$clinit:I

    .line 4
    .line 5
    iget-object v1, v0, Lcom/android/systemui/qs/AutoSizingList;->mAdapter:Landroid/widget/ListAdapter;

    .line 6
    .line 7
    if-eqz v1, :cond_0

    .line 8
    .line 9
    invoke-interface {v1}, Landroid/widget/ListAdapter;->getCount()I

    .line 10
    .line 11
    .line 12
    move-result v1

    .line 13
    goto :goto_0

    .line 14
    :cond_0
    const/4 v1, 0x0

    .line 15
    :goto_0
    iput v1, v0, Lcom/android/systemui/qs/AutoSizingList;->mCount:I

    .line 16
    .line 17
    iget-object p0, p0, Lcom/android/systemui/qs/AutoSizingList$1;->this$0:Lcom/android/systemui/qs/AutoSizingList;

    .line 18
    .line 19
    iget-object v0, p0, Lcom/android/systemui/qs/AutoSizingList;->mHandler:Landroid/os/Handler;

    .line 20
    .line 21
    iget-object p0, p0, Lcom/android/systemui/qs/AutoSizingList;->mBindChildren:Lcom/android/systemui/qs/AutoSizingList$$ExternalSyntheticLambda0;

    .line 22
    .line 23
    invoke-virtual {v0, p0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 24
    .line 25
    .line 26
    return-void
.end method

.method public final onInvalidated()V
    .locals 1

    .line 1
    iget-object p0, p0, Lcom/android/systemui/qs/AutoSizingList$1;->this$0:Lcom/android/systemui/qs/AutoSizingList;

    .line 2
    .line 3
    sget v0, Lcom/android/systemui/qs/AutoSizingList;->$r8$clinit:I

    .line 4
    .line 5
    iget-object v0, p0, Lcom/android/systemui/qs/AutoSizingList;->mHandler:Landroid/os/Handler;

    .line 6
    .line 7
    iget-object p0, p0, Lcom/android/systemui/qs/AutoSizingList;->mBindChildren:Lcom/android/systemui/qs/AutoSizingList$$ExternalSyntheticLambda0;

    .line 8
    .line 9
    invoke-virtual {v0, p0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 10
    .line 11
    .line 12
    return-void
.end method
