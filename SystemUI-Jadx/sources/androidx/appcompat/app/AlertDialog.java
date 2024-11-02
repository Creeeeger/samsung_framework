package androidx.appcompat.app;

import android.R;
import android.content.Context;
import android.content.DialogInterface;
import android.graphics.drawable.Drawable;
import android.util.TypedValue;
import android.view.ContextThemeWrapper;
import android.view.KeyEvent;
import android.view.View;
import android.view.ViewGroup;
import android.widget.AdapterView;
import android.widget.ArrayAdapter;
import android.widget.Button;
import android.widget.ImageView;
import android.widget.ListAdapter;
import android.widget.TextView;
import androidx.appcompat.app.AlertController;
import androidx.core.widget.NestedScrollView;

/* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
/* loaded from: classes.dex */
public class AlertDialog extends AppCompatDialog implements DialogInterface {
    public final AlertController mAlert;

    /* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
    /* loaded from: classes.dex */
    public final class Builder {
        public final AlertController.AlertParams P;
        public final int mTheme;

        public Builder(Context context) {
            this(context, AlertDialog.resolveDialogTheme(0, context));
        }

        public final AlertDialog create() {
            int i;
            ListAdapter listAdapter;
            final AlertController.AlertParams alertParams = this.P;
            AlertDialog alertDialog = new AlertDialog(alertParams.mContext, this.mTheme);
            final AlertController alertController = alertDialog.mAlert;
            View view = alertParams.mCustomTitleView;
            if (view != null) {
                alertController.mCustomTitleView = view;
            } else {
                CharSequence charSequence = alertParams.mTitle;
                if (charSequence != null) {
                    alertController.mTitle = charSequence;
                    TextView textView = alertController.mTitleView;
                    if (textView != null) {
                        textView.setText(charSequence);
                    }
                }
                Drawable drawable = alertParams.mIcon;
                if (drawable != null) {
                    alertController.mIcon = drawable;
                    alertController.mIconId = 0;
                    ImageView imageView = alertController.mIconView;
                    if (imageView != null) {
                        imageView.setVisibility(0);
                        alertController.mIconView.setImageDrawable(drawable);
                    }
                }
            }
            CharSequence charSequence2 = alertParams.mMessage;
            if (charSequence2 != null) {
                alertController.mMessage = charSequence2;
                TextView textView2 = alertController.mMessageView;
                if (textView2 != null) {
                    textView2.setText(charSequence2);
                }
            }
            CharSequence charSequence3 = alertParams.mPositiveButtonText;
            if (charSequence3 != null) {
                alertController.setButton(-1, charSequence3, alertParams.mPositiveButtonListener);
            }
            CharSequence charSequence4 = alertParams.mNegativeButtonText;
            if (charSequence4 != null) {
                alertController.setButton(-2, charSequence4, alertParams.mNegativeButtonListener);
            }
            if (alertParams.mItems != null || alertParams.mAdapter != null) {
                final AlertController.RecycleListView recycleListView = (AlertController.RecycleListView) alertParams.mInflater.inflate(alertController.mListLayout, (ViewGroup) null);
                if (alertParams.mIsMultiChoice) {
                    final Context context = alertParams.mContext;
                    final int i2 = alertController.mMultiChoiceItemLayout;
                    final int i3 = R.id.text1;
                    final CharSequence[] charSequenceArr = alertParams.mItems;
                    listAdapter = new ArrayAdapter(context, i2, i3, charSequenceArr) { // from class: androidx.appcompat.app.AlertController.AlertParams.1
                        @Override // android.widget.ArrayAdapter, android.widget.Adapter
                        public final View getView(int i4, View view2, ViewGroup viewGroup) {
                            View view3 = super.getView(i4, view2, viewGroup);
                            boolean[] zArr = AlertParams.this.mCheckedItems;
                            if (zArr != null && zArr[i4]) {
                                recycleListView.setItemChecked(i4, true);
                            }
                            return view3;
                        }
                    };
                } else {
                    if (alertParams.mIsSingleChoice) {
                        i = alertController.mSingleChoiceItemLayout;
                    } else {
                        i = alertController.mListItemLayout;
                    }
                    listAdapter = alertParams.mAdapter;
                    if (listAdapter == null) {
                        listAdapter = new AlertController.CheckedItemAdapter(alertParams.mContext, i, R.id.text1, alertParams.mItems);
                    }
                }
                alertController.mAdapter = listAdapter;
                alertController.mCheckedItem = alertParams.mCheckedItem;
                if (alertParams.mOnClickListener != null) {
                    recycleListView.setOnItemClickListener(new AdapterView.OnItemClickListener() { // from class: androidx.appcompat.app.AlertController.AlertParams.3
                        @Override // android.widget.AdapterView.OnItemClickListener
                        public final void onItemClick(AdapterView adapterView, View view2, int i4, long j) {
                            AlertParams.this.mOnClickListener.onClick(alertController.mDialog, i4);
                            if (!AlertParams.this.mIsSingleChoice) {
                                alertController.mDialog.dismiss();
                            }
                        }
                    });
                } else if (alertParams.mOnCheckboxClickListener != null) {
                    recycleListView.setOnItemClickListener(new AdapterView.OnItemClickListener() { // from class: androidx.appcompat.app.AlertController.AlertParams.4
                        @Override // android.widget.AdapterView.OnItemClickListener
                        public final void onItemClick(AdapterView adapterView, View view2, int i4, long j) {
                            boolean[] zArr = AlertParams.this.mCheckedItems;
                            if (zArr != null) {
                                zArr[i4] = recycleListView.isItemChecked(i4);
                            }
                            AlertParams.this.mOnCheckboxClickListener.onClick(alertController.mDialog, i4, recycleListView.isItemChecked(i4));
                        }
                    });
                }
                if (alertParams.mIsSingleChoice) {
                    recycleListView.setChoiceMode(1);
                } else if (alertParams.mIsMultiChoice) {
                    recycleListView.setChoiceMode(2);
                }
                alertController.mListView = recycleListView;
            }
            View view2 = alertParams.mView;
            if (view2 != null) {
                alertController.mView = view2;
                alertController.mViewLayoutResId = 0;
                alertController.mViewSpacingSpecified = false;
            } else {
                int i4 = alertParams.mViewLayoutResId;
                if (i4 != 0) {
                    alertController.mView = null;
                    alertController.mViewLayoutResId = i4;
                    alertController.mViewSpacingSpecified = false;
                }
            }
            alertDialog.setCancelable(alertParams.mCancelable);
            if (alertParams.mCancelable) {
                alertDialog.setCanceledOnTouchOutside(true);
            }
            alertDialog.setOnCancelListener(null);
            alertDialog.setOnDismissListener(alertParams.mOnDismissListener);
            DialogInterface.OnKeyListener onKeyListener = alertParams.mOnKeyListener;
            if (onKeyListener != null) {
                alertDialog.setOnKeyListener(onKeyListener);
            }
            return alertDialog;
        }

        public final void setNegativeButton(int i, DialogInterface.OnClickListener onClickListener) {
            AlertController.AlertParams alertParams = this.P;
            alertParams.mNegativeButtonText = alertParams.mContext.getText(i);
            alertParams.mNegativeButtonListener = onClickListener;
        }

        public final void setPositiveButton(int i, DialogInterface.OnClickListener onClickListener) {
            AlertController.AlertParams alertParams = this.P;
            alertParams.mPositiveButtonText = alertParams.mContext.getText(i);
            alertParams.mPositiveButtonListener = onClickListener;
        }

        public final void setView(View view) {
            AlertController.AlertParams alertParams = this.P;
            alertParams.mView = view;
            alertParams.mViewLayoutResId = 0;
        }

        public Builder(Context context, int i) {
            this.P = new AlertController.AlertParams(new ContextThemeWrapper(context, AlertDialog.resolveDialogTheme(i, context)));
            this.mTheme = i;
        }

        public final void setPositiveButton(CharSequence charSequence, DialogInterface.OnClickListener onClickListener) {
            AlertController.AlertParams alertParams = this.P;
            alertParams.mPositiveButtonText = charSequence;
            alertParams.mPositiveButtonListener = onClickListener;
        }
    }

    public AlertDialog(Context context) {
        this(context, 0);
    }

    static int resolveDialogTheme(int i, Context context) {
        if (((i >>> 24) & 255) >= 1) {
            return i;
        }
        TypedValue typedValue = new TypedValue();
        context.getTheme().resolveAttribute(com.android.systemui.R.attr.alertDialogTheme, typedValue, true);
        return typedValue.resourceId;
    }

    public final Button getButton(int i) {
        AlertController alertController = this.mAlert;
        if (i != -3) {
            if (i != -2) {
                if (i != -1) {
                    alertController.getClass();
                    return null;
                }
                return alertController.mButtonPositive;
            }
            return alertController.mButtonNegative;
        }
        return alertController.mButtonNeutral;
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:100:0x02fc  */
    /* JADX WARN: Removed duplicated region for block: B:103:0x0307  */
    /* JADX WARN: Removed duplicated region for block: B:106:0x0312  */
    /* JADX WARN: Removed duplicated region for block: B:124:0x0357  */
    /* JADX WARN: Removed duplicated region for block: B:127:0x03fa  */
    /* JADX WARN: Removed duplicated region for block: B:134:0x040e  */
    /* JADX WARN: Removed duplicated region for block: B:158:0x0473  */
    /* JADX WARN: Removed duplicated region for block: B:161:0x0489  */
    /* JADX WARN: Removed duplicated region for block: B:164:0x049c  */
    /* JADX WARN: Removed duplicated region for block: B:167:0x04ad  */
    /* JADX WARN: Removed duplicated region for block: B:176:0x04c8  */
    /* JADX WARN: Removed duplicated region for block: B:193:0x0501  */
    /* JADX WARN: Removed duplicated region for block: B:206:0x0527  */
    /* JADX WARN: Removed duplicated region for block: B:232:0x0480  */
    /* JADX WARN: Removed duplicated region for block: B:238:0x0410  */
    /* JADX WARN: Removed duplicated region for block: B:240:0x03fc  */
    /* JADX WARN: Removed duplicated region for block: B:241:0x036f  */
    /* JADX WARN: Removed duplicated region for block: B:257:0x0314  */
    /* JADX WARN: Removed duplicated region for block: B:258:0x0309  */
    /* JADX WARN: Removed duplicated region for block: B:259:0x02fe  */
    /* JADX WARN: Removed duplicated region for block: B:260:0x02ec  */
    /* JADX WARN: Removed duplicated region for block: B:261:0x02cc  */
    /* JADX WARN: Removed duplicated region for block: B:264:0x02a4  */
    /* JADX WARN: Removed duplicated region for block: B:266:0x027f  */
    /* JADX WARN: Removed duplicated region for block: B:269:0x0247  */
    /* JADX WARN: Removed duplicated region for block: B:271:0x0256  */
    /* JADX WARN: Removed duplicated region for block: B:272:0x0221  */
    /* JADX WARN: Removed duplicated region for block: B:275:0x01ea  */
    /* JADX WARN: Removed duplicated region for block: B:277:0x01f9  */
    /* JADX WARN: Removed duplicated region for block: B:278:0x01bd  */
    /* JADX WARN: Removed duplicated region for block: B:279:0x019a  */
    /* JADX WARN: Removed duplicated region for block: B:280:0x0176  */
    /* JADX WARN: Removed duplicated region for block: B:281:0x0167  */
    /* JADX WARN: Removed duplicated region for block: B:42:0x015c  */
    /* JADX WARN: Removed duplicated region for block: B:45:0x0174  */
    /* JADX WARN: Removed duplicated region for block: B:48:0x018f  */
    /* JADX WARN: Removed duplicated region for block: B:51:0x01ae  */
    /* JADX WARN: Removed duplicated region for block: B:54:0x01b7  */
    /* JADX WARN: Removed duplicated region for block: B:62:0x0212  */
    /* JADX WARN: Removed duplicated region for block: B:65:0x021b  */
    /* JADX WARN: Removed duplicated region for block: B:73:0x0270  */
    /* JADX WARN: Removed duplicated region for block: B:76:0x0279  */
    /* JADX WARN: Removed duplicated region for block: B:84:0x02ca  */
    /* JADX WARN: Removed duplicated region for block: B:87:0x02d0  */
    /* JADX WARN: Removed duplicated region for block: B:95:0x02ea  */
    /* JADX WARN: Removed duplicated region for block: B:97:0x02ef  */
    /* JADX WARN: Type inference failed for: r8v33, types: [androidx.appcompat.app.AlertController$$ExternalSyntheticLambda0] */
    @Override // androidx.appcompat.app.AppCompatDialog, androidx.activity.ComponentDialog, android.app.Dialog
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public void onCreate(android.os.Bundle r23) {
        /*
            Method dump skipped, instructions count: 1428
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.appcompat.app.AlertDialog.onCreate(android.os.Bundle):void");
    }

    @Override // android.app.Dialog, android.view.KeyEvent.Callback
    public boolean onKeyDown(int i, KeyEvent keyEvent) {
        boolean z;
        NestedScrollView nestedScrollView = this.mAlert.mScrollView;
        if (nestedScrollView != null && nestedScrollView.executeKeyEvent(keyEvent)) {
            z = true;
        } else {
            z = false;
        }
        if (z) {
            return true;
        }
        return super.onKeyDown(i, keyEvent);
    }

    @Override // android.app.Dialog, android.view.KeyEvent.Callback
    public boolean onKeyUp(int i, KeyEvent keyEvent) {
        boolean z;
        NestedScrollView nestedScrollView = this.mAlert.mScrollView;
        if (nestedScrollView != null && nestedScrollView.executeKeyEvent(keyEvent)) {
            z = true;
        } else {
            z = false;
        }
        if (z) {
            return true;
        }
        return super.onKeyUp(i, keyEvent);
    }

    public final void setButton(int i, CharSequence charSequence, DialogInterface.OnClickListener onClickListener) {
        this.mAlert.setButton(i, charSequence, onClickListener);
    }

    @Override // androidx.appcompat.app.AppCompatDialog, android.app.Dialog
    public final void setTitle(CharSequence charSequence) {
        super.setTitle(charSequence);
        AlertController alertController = this.mAlert;
        alertController.mTitle = charSequence;
        TextView textView = alertController.mTitleView;
        if (textView != null) {
            textView.setText(charSequence);
        }
    }

    public AlertDialog(Context context, int i) {
        super(context, resolveDialogTheme(i, context));
        this.mAlert = new AlertController(getContext(), this, getWindow());
    }

    public AlertDialog(Context context, boolean z, DialogInterface.OnCancelListener onCancelListener) {
        this(context, 0);
        setCancelable(z);
        setOnCancelListener(onCancelListener);
    }
}
