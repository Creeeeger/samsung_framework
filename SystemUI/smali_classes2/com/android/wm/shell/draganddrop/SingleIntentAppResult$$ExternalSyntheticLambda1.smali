.class public final synthetic Lcom/android/wm/shell/draganddrop/SingleIntentAppResult$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f"

# interfaces
.implements Ljava/util/function/Predicate;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:Lcom/android/wm/shell/draganddrop/SingleIntentAppResult;

.field public final synthetic f$1:Ljava/util/List;


# direct methods
.method public synthetic constructor <init>(Lcom/android/wm/shell/draganddrop/SingleIntentAppResult;Ljava/util/List;I)V
    .locals 0

    .line 1
    iput p3, p0, Lcom/android/wm/shell/draganddrop/SingleIntentAppResult$$ExternalSyntheticLambda1;->$r8$classId:I

    .line 2
    .line 3
    iput-object p1, p0, Lcom/android/wm/shell/draganddrop/SingleIntentAppResult$$ExternalSyntheticLambda1;->f$0:Lcom/android/wm/shell/draganddrop/SingleIntentAppResult;

    .line 4
    .line 5
    iput-object p2, p0, Lcom/android/wm/shell/draganddrop/SingleIntentAppResult$$ExternalSyntheticLambda1;->f$1:Ljava/util/List;

    .line 6
    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    .line 9
    .line 10
    return-void
.end method


# virtual methods
.method public final test(Ljava/lang/Object;)Z
    .locals 1

    .line 1
    iget v0, p0, Lcom/android/wm/shell/draganddrop/SingleIntentAppResult$$ExternalSyntheticLambda1;->$r8$classId:I

    .line 2
    .line 3
    packed-switch v0, :pswitch_data_0

    .line 4
    .line 5
    .line 6
    goto :goto_0

    .line 7
    :pswitch_0
    iget-object v0, p0, Lcom/android/wm/shell/draganddrop/SingleIntentAppResult$$ExternalSyntheticLambda1;->f$0:Lcom/android/wm/shell/draganddrop/SingleIntentAppResult;

    .line 8
    .line 9
    iget-object p0, p0, Lcom/android/wm/shell/draganddrop/SingleIntentAppResult$$ExternalSyntheticLambda1;->f$1:Ljava/util/List;

    .line 10
    .line 11
    check-cast p1, Landroid/content/pm/ResolveInfo;

    .line 12
    .line 13
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 14
    .line 15
    .line 16
    iget-object p1, p1, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    .line 17
    .line 18
    invoke-virtual {v0, p0, p1}, Lcom/android/wm/shell/draganddrop/BaseAppResult;->isVisibleSingleInstance(Ljava/util/List;Landroid/content/pm/ActivityInfo;)Z

    .line 19
    .line 20
    .line 21
    move-result p0

    .line 22
    return p0

    .line 23
    :pswitch_1
    iget-object v0, p0, Lcom/android/wm/shell/draganddrop/SingleIntentAppResult$$ExternalSyntheticLambda1;->f$0:Lcom/android/wm/shell/draganddrop/SingleIntentAppResult;

    .line 24
    .line 25
    iget-object p0, p0, Lcom/android/wm/shell/draganddrop/SingleIntentAppResult$$ExternalSyntheticLambda1;->f$1:Ljava/util/List;

    .line 26
    .line 27
    check-cast p1, Landroid/content/pm/ResolveInfo;

    .line 28
    .line 29
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 30
    .line 31
    .line 32
    iget-object p1, p1, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    .line 33
    .line 34
    invoke-virtual {v0, p0, p1}, Lcom/android/wm/shell/draganddrop/BaseAppResult;->isVisibleSingleInstance(Ljava/util/List;Landroid/content/pm/ActivityInfo;)Z

    .line 35
    .line 36
    .line 37
    move-result p0

    .line 38
    return p0

    .line 39
    :goto_0
    iget-object v0, p0, Lcom/android/wm/shell/draganddrop/SingleIntentAppResult$$ExternalSyntheticLambda1;->f$0:Lcom/android/wm/shell/draganddrop/SingleIntentAppResult;

    .line 40
    .line 41
    iget-object p0, p0, Lcom/android/wm/shell/draganddrop/SingleIntentAppResult$$ExternalSyntheticLambda1;->f$1:Ljava/util/List;

    .line 42
    .line 43
    check-cast p1, Landroid/content/pm/ResolveInfo;

    .line 44
    .line 45
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 46
    .line 47
    .line 48
    iget-object p1, p1, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    .line 49
    .line 50
    invoke-virtual {v0, p0, p1}, Lcom/android/wm/shell/draganddrop/BaseAppResult;->isVisibleSingleInstance(Ljava/util/List;Landroid/content/pm/ActivityInfo;)Z

    .line 51
    .line 52
    .line 53
    move-result p0

    .line 54
    return p0

    .line 55
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
