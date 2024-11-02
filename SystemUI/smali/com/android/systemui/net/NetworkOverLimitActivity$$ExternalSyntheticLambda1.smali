.class public final synthetic Lcom/android/systemui/net/NetworkOverLimitActivity$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f"

# interfaces
.implements Landroid/content/DialogInterface$OnDismissListener;


# instance fields
.field public final synthetic f$0:Lcom/android/systemui/net/NetworkOverLimitActivity;


# direct methods
.method public synthetic constructor <init>(Lcom/android/systemui/net/NetworkOverLimitActivity;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/android/systemui/net/NetworkOverLimitActivity$$ExternalSyntheticLambda1;->f$0:Lcom/android/systemui/net/NetworkOverLimitActivity;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final onDismiss(Landroid/content/DialogInterface;)V
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/systemui/net/NetworkOverLimitActivity$$ExternalSyntheticLambda1;->f$0:Lcom/android/systemui/net/NetworkOverLimitActivity;

    .line 2
    .line 3
    sget p1, Lcom/android/systemui/net/NetworkOverLimitActivity;->$r8$clinit:I

    .line 4
    .line 5
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    .line 6
    .line 7
    .line 8
    return-void
.end method
