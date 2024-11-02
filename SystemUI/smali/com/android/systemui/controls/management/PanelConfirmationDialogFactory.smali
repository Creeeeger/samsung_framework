.class public final Lcom/android/systemui/controls/management/PanelConfirmationDialogFactory;
.super Ljava/lang/Object;
.source "qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f"


# instance fields
.field public final internalDialogFactory:Lkotlin/jvm/functions/Function1;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 3
    sget-object v0, Lcom/android/systemui/controls/management/PanelConfirmationDialogFactory$1;->INSTANCE:Lcom/android/systemui/controls/management/PanelConfirmationDialogFactory$1;

    invoke-direct {p0, v0}, Lcom/android/systemui/controls/management/PanelConfirmationDialogFactory;-><init>(Lkotlin/jvm/functions/Function1;)V

    return-void
.end method

.method public constructor <init>(Lkotlin/jvm/functions/Function1;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/jvm/functions/Function1;",
            ")V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/android/systemui/controls/management/PanelConfirmationDialogFactory;->internalDialogFactory:Lkotlin/jvm/functions/Function1;

    return-void
.end method
