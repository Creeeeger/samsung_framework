.class public final synthetic Lcom/android/systemui/qs/QSDetailItems$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/android/systemui/qs/QSDetailItems;

.field public final synthetic f$1:I


# direct methods
.method public synthetic constructor <init>(Lcom/android/systemui/qs/QSDetailItems;I)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/android/systemui/qs/QSDetailItems$$ExternalSyntheticLambda0;->f$0:Lcom/android/systemui/qs/QSDetailItems;

    .line 5
    .line 6
    iput p2, p0, Lcom/android/systemui/qs/QSDetailItems$$ExternalSyntheticLambda0;->f$1:I

    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/systemui/qs/QSDetailItems$$ExternalSyntheticLambda0;->f$0:Lcom/android/systemui/qs/QSDetailItems;

    .line 2
    .line 3
    iget p0, p0, Lcom/android/systemui/qs/QSDetailItems$$ExternalSyntheticLambda0;->f$1:I

    .line 4
    .line 5
    iget-object v0, v0, Lcom/android/systemui/qs/QSDetailItems;->mEmptyText:Landroid/widget/TextView;

    .line 6
    .line 7
    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setText(I)V

    .line 8
    .line 9
    .line 10
    return-void
.end method
