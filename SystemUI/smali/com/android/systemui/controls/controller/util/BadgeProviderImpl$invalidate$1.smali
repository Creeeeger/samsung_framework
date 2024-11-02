.class public final Lcom/android/systemui/controls/controller/util/BadgeProviderImpl$invalidate$1;
.super Ljava/lang/Object;
.source "qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic this$0:Lcom/android/systemui/controls/controller/util/BadgeProviderImpl;


# direct methods
.method public constructor <init>(Lcom/android/systemui/controls/controller/util/BadgeProviderImpl;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/systemui/controls/controller/util/BadgeProviderImpl$invalidate$1;->this$0:Lcom/android/systemui/controls/controller/util/BadgeProviderImpl;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/systemui/controls/controller/util/BadgeProviderImpl$invalidate$1;->this$0:Lcom/android/systemui/controls/controller/util/BadgeProviderImpl;

    .line 2
    .line 3
    iget-object v0, v0, Lcom/android/systemui/controls/controller/util/BadgeProviderImpl;->badgeRequiredSet:Ljava/util/Set;

    .line 4
    .line 5
    invoke-interface {v0}, Ljava/util/Collection;->isEmpty()Z

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    xor-int/lit8 v0, v0, 0x1

    .line 10
    .line 11
    if-eqz v0, :cond_0

    .line 12
    .line 13
    iget-object v0, p0, Lcom/android/systemui/controls/controller/util/BadgeProviderImpl$invalidate$1;->this$0:Lcom/android/systemui/controls/controller/util/BadgeProviderImpl;

    .line 14
    .line 15
    iget-object v0, v0, Lcom/android/systemui/controls/controller/util/BadgeProviderImpl;->context:Landroid/content/Context;

    .line 16
    .line 17
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 18
    .line 19
    .line 20
    move-result-object v0

    .line 21
    const v1, 0x7f13039a

    .line 22
    .line 23
    .line 24
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    .line 25
    .line 26
    .line 27
    move-result-object v0

    .line 28
    goto :goto_0

    .line 29
    :cond_0
    const/4 v0, 0x0

    .line 30
    :goto_0
    iget-object p0, p0, Lcom/android/systemui/controls/controller/util/BadgeProviderImpl$invalidate$1;->this$0:Lcom/android/systemui/controls/controller/util/BadgeProviderImpl;

    .line 31
    .line 32
    iget-object p0, p0, Lcom/android/systemui/controls/controller/util/BadgeProviderImpl;->badgeObservers:Ljava/util/Set;

    .line 33
    .line 34
    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 35
    .line 36
    .line 37
    move-result-object p0

    .line 38
    :goto_1
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 39
    .line 40
    .line 41
    move-result v1

    .line 42
    if-eqz v1, :cond_1

    .line 43
    .line 44
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 45
    .line 46
    .line 47
    move-result-object v1

    .line 48
    check-cast v1, Lcom/android/systemui/controls/controller/util/BadgeObserver;

    .line 49
    .line 50
    iget-object v1, v1, Lcom/android/systemui/controls/controller/util/BadgeObserver;->menuItem:Landroidx/appcompat/view/menu/SeslMenuItem;

    .line 51
    .line 52
    check-cast v1, Landroidx/appcompat/view/menu/MenuItemImpl;

    .line 53
    .line 54
    invoke-virtual {v1, v0}, Landroidx/appcompat/view/menu/MenuItemImpl;->setBadgeText(Ljava/lang/String;)V

    .line 55
    .line 56
    .line 57
    goto :goto_1

    .line 58
    :cond_1
    return-void
.end method
