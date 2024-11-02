.class public final synthetic Lcom/android/systemui/qs/buttons/QSButtonsContainerController$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f"

# interfaces
.implements Lcom/android/systemui/util/SettingsHelper$OnChangedCallback;


# instance fields
.field public final synthetic f$0:Lcom/android/systemui/qs/buttons/QSButtonsContainerController;


# direct methods
.method public synthetic constructor <init>(Lcom/android/systemui/qs/buttons/QSButtonsContainerController;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/android/systemui/qs/buttons/QSButtonsContainerController$$ExternalSyntheticLambda0;->f$0:Lcom/android/systemui/qs/buttons/QSButtonsContainerController;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final onChanged(Landroid/net/Uri;)V
    .locals 2

    .line 1
    iget-object p0, p0, Lcom/android/systemui/qs/buttons/QSButtonsContainerController$$ExternalSyntheticLambda0;->f$0:Lcom/android/systemui/qs/buttons/QSButtonsContainerController;

    .line 2
    .line 3
    iget-object v0, p0, Lcom/android/systemui/qs/buttons/QSButtonsContainerController;->mSettingsValueList:[Landroid/net/Uri;

    .line 4
    .line 5
    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    .line 10
    .line 11
    .line 12
    move-result v0

    .line 13
    if-eqz v0, :cond_0

    .line 14
    .line 15
    new-instance v0, Ljava/lang/StringBuilder;

    .line 16
    .line 17
    const-string v1, "onChanged() - "

    .line 18
    .line 19
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 20
    .line 21
    .line 22
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 23
    .line 24
    .line 25
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 26
    .line 27
    .line 28
    move-result-object p1

    .line 29
    const-string v0, "QSButtonContainerController"

    .line 30
    .line 31
    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 32
    .line 33
    .line 34
    iget-object p0, p0, Lcom/android/systemui/util/ViewController;->mView:Landroid/view/View;

    .line 35
    .line 36
    check-cast p0, Lcom/android/systemui/qs/buttons/QSButtonsContainer;

    .line 37
    .line 38
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 39
    .line 40
    .line 41
    new-instance p1, Lcom/android/systemui/qs/buttons/QSButtonsContainer$$ExternalSyntheticLambda0;

    .line 42
    .line 43
    invoke-direct {p1, p0}, Lcom/android/systemui/qs/buttons/QSButtonsContainer$$ExternalSyntheticLambda0;-><init>(Lcom/android/systemui/qs/buttons/QSButtonsContainer;)V

    .line 44
    .line 45
    .line 46
    invoke-virtual {p0, p1}, Landroid/widget/LinearLayout;->post(Ljava/lang/Runnable;)Z

    .line 47
    .line 48
    .line 49
    :cond_0
    return-void
.end method
