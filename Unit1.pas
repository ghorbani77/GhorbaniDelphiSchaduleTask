
unit Unit1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ExtCtrls, DateUtils, MMSystem, StdCtrls, ComCtrls;

type
  TForm1 = class(TForm)
    Timer1: TTimer;
    Button1: TButton;
    DateTimePicker1: TDateTimePicker;
    Button2: TButton;
    Label1: TLabel;
    DateTimePicker2: TDateTimePicker;
    Label2: TLabel;
    Label3: TLabel;
    Button3: TButton;
    Label4: TLabel;
    Label5: TLabel;
    procedure Timer1Timer(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure Button3Click(Sender: TObject);
  private
    myTime: TDateTime; // Holds a value for date and time of alarm
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

{$R *.dfm}

procedure TForm1.Button1Click(Sender: TObject);
begin
  if Timer1.Enabled = true then // If timer is active
  begin
    Timer1.Enabled := false; // Disable it
    sndPlaySound(nil, 0); // Stop playing the sound
    Label3.Caption := 'Alarm stopped at: ' + DateTimeToStr(Now);
    // Update status
  end;

end;

procedure TForm1.Button2Click(Sender: TObject);
begin
  // My time combines date and time values from two DateTimePicker
  myTime := EncodeDateTime(YearOf(DateTimePicker1.DateTime),
    MonthOf(DateTimePicker1.DateTime), DayOf(DateTimePicker1.DateTime),
    HourOf(DateTimePicker2.DateTime), MinuteOf(DateTimePicker2.DateTime),
    SecondOf(DateTimePicker2.DateTime),
    MilliSecondOf(DateTimePicker2.DateTime));
  Label3.Caption := 'Alarm set to: ' + DateTimeToStr(myTime); // Update status
  Timer1.Enabled := true; // Enable alarm / timer

end;

procedure TForm1.Button3Click(Sender: TObject);
begin
  Close; // Close the application
end;

procedure TForm1.FormCreate(Sender: TObject);
begin
  // Set both DateTimePickers to current datetime when application starts
  DateTimePicker1.DateTime := Now;
  DateTimePicker2.DateTime := Now;
end;

procedure TForm1.Timer1Timer(Sender: TObject);
begin
  if Now > myTime then // if our set datetime value is in the past
  begin
    Label3.Caption := 'Alarm started at: ' + DateTimeToStr(myTime) +
      ', current time: ' + DateTimeToStr(Now); // Update status
    sndPlaySound('C:\Windows\Media\chimes.wav', SND_NODEFAULT Or SND_ASYNC Or
      SND_LOOP); // Play sound

  end;
end;

end.
